Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222D617580
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729136154; cv=none; b=e0dbOaPxvvTk1qoQkiK1y8TtFb8+glv2lBIhpvZziWoBxWnqqNLba+QznP9UUCQOvor7Zv6Om2hj7/aAFbO2iQ0odSRysCmnTJStu/eEro43nTnx7c9mO724CrukgpScYogV/xl/01TuyPjoBTgfqO4G+CKi9SWSNUfM4oWpp6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729136154; c=relaxed/simple;
	bh=+n3LL90JtV7i1nXtemwqkWaDBa8B3qPQ4IXSYGfzVpc=;
	h=To:Subject:From:Message-Id:Date; b=UZVt3uuXlDcTL/6fpOZT/BMK57nrlAIm3ECTAJsuVJ32tp6DOl5fPJzIP5yfdT51l6Kg0qTwyBr+KJimQMNi1wWeeMod4Dw6vmk3YNU6ziG493jFRmdInKlJXkKy0U23WeW4Fi5IinmDyE3HFRCNK2pMYQM8OI7YGzz42zbB3z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtA0ZZGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtA0ZZGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B66C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729136153;
	bh=+n3LL90JtV7i1nXtemwqkWaDBa8B3qPQ4IXSYGfzVpc=;
	h=To:Subject:From:Date:From;
	b=qtA0ZZGx7+Ll6pQ09UXgLzwMyywuVRxL7urFjaM4d44W+GB+kVORrIJIjl+UXM1ae
	 +WOwCjT0BUx5HagG/ITLxA8W5PAlZ5yO7nZOdFxFs3jBhVAbD13Wm0GwhqxsPMOjIS
	 o+Fi48Qv4ms2tAL/+ptfqOhi1ODtKc7fuprWTHki950BeIfcZxtG71ZUILFL99QnFT
	 G3nLx7NfN07bFOLmvuuBDs/3c17nc0SiI/FcD47CtI6F8FZiJIdxzZSSk4Md1SXP44
	 npAXswzznzlcaW9YT+1RvOSEl/64CVRvsBbxHtZp5BTLg7CH7v4uTHE0l1iFBwQzY0
	 /fOjbqzofw9pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944CBD2F7C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172913615360.2699.14237699262112268767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b4d7310ce838c97b1f32208efdbf81c85ba6a680a4417fe0fe4ccbc22513c8
Date: Thu, 17 Oct 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729136153
