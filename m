Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489243BFAE1
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792359634; cv=none; b=jZ9R89QN/c+FsxP3IMt0zqzpNgvHYQxA9BS2Pk30/cHdEBhLW06T6gl9eNR+5P6z1cXCcft4VQYEfYqeqiJSeopY20ZrSCVclfhcHouIUMcWNRbuxJxshQOiGQBQTPOddVe3KNwA9hC7XYcx/dAqJwdiUlgF5u0v2Cky1oHD6mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792359634; c=relaxed/simple;
	bh=kv33vE1WaXfpMprgSC4Ydap076xVsx6ZYTWc4pmiecc=;
	h=To:Subject:From:Message-Id:Date; b=Ht1Jeb6GiblCSOP9P6ERizeUi3hfvICbDJK1+srAvyHfHAhwlRJ9B+KUEXCPyqhJPFIgMF6rSHY2pBhzXFh+uZNteP1TS1PG8dw3sMy+KUMAjLIlfAUX8o/YlwIKMdSIZ1IqK/KUdA9WmYJdqbmFVlQirJMEybXTwg7IMY+chLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7oMlPAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7oMlPAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8A4C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792359633;
	bh=kv33vE1WaXfpMprgSC4Ydap076xVsx6ZYTWc4pmiecc=;
	h=To:Subject:From:Date:From;
	b=N7oMlPALdjVZ/Dgs2pQ5Jv6z1m3p/xUIbu+KdLYYu36fsyZYdRIbzb40RuIfdg8S0
	 FzSmNgMopri7eul34DS28KhavKv5+ljnjU2JK58iUNmvNfSgluaoeCHF9BsrZxDDwF
	 pjaQAZJ/ekP+RgK2m/7VosETfLFBBUukVKUa2ep3ClYaGMLvQRNMnoehyGGg3VujJP
	 o0s3vGDstr+R14qPfJkAqZwvhPW5w0cZ73tpfL99PtChRBOvM4OcRGioqNa+arDB3X
	 ktFA7kYALhgYNcalIFCg9VPpD5C0iBCsfOPUXiiHLWwQ1PJk26HKow8+WGCtXSI9F5
	 xFUiW2GJu7WVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA28FCCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235963368.13213.4741005678261025318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be03ff28a359141111d11eef61b20773cc55178f1a9a729e7b1bbf4faba0900
Date: Sun, 18 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792359633
