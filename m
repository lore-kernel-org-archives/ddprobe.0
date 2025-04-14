Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5100925228A
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744638594; cv=none; b=Xg6JG3XLmuBjD/b++HNxT5X7luQMsktqSeRvX1EyvOMet/6DnwjeMlpWx+xtEUsQj4fnmGRWMzQDl/FFB5M8BPxoBf/3sG4GfeFZUn6wTnv+pDy5ndiw/AHCFsG1lYimlPx+uSVCV4pBFeNk0zaoV0tlIjpXMOFm8qLExhw1nvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744638594; c=relaxed/simple;
	bh=e2Pv+yRB7aWK1gmA7j6S+1VGeOjNh2RmFFvMQQgIHnA=;
	h=To:Subject:From:Message-Id:Date; b=Iasd3OTEtPnIfqoQlpV9x/VszipNMlNA5J0C8rkORmTflyuwMHnKqKqVyCu0B0cH7QlkbvMnbGFToc6vZqhrOAQqJBFVUJ8KeSDD+Y77Kipt2d9HtV66R6DWoYxYIwUzLd2+z+oR47dmdJHNnAjNzcmxlRIDodWDLSmwzdvpnGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWjiR83d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWjiR83d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF927C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744638593;
	bh=e2Pv+yRB7aWK1gmA7j6S+1VGeOjNh2RmFFvMQQgIHnA=;
	h=To:Subject:From:Date:From;
	b=kWjiR83dM0WLUKu/e4ypLiassmewdjxBJwouzB+H2XYlXLBnBZITcs+EA2y8nYGk9
	 1fypci3ZNhqPef4Rq4iufSx7IJVhtZA2agfpK8FFFOtbdd1mCa5C3LUJxOlPvmBVmX
	 GnA/MiS5E5Icd5xk2xtjlDyqFvQoZgHm3Jo2F6zdOcujYDehzxQ4WBMD/aFEdhAVyh
	 UQnANep8kgt7gzPkX/p+W+qfnnDaVKfA0fbokWFtF0rmINqQubevf6Hkgo5L5EQYKd
	 p7lJXK4FDHmrg+PmZ+GnmtHnQeYcQMR85xBDy2JCAalj8m/BGmeuGvOlR0TNBv5olq
	 lnIrTBc3WLkfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4CDBC369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463859365.16165.12781108283998307916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc302ee933b6e71aed084e71aefbb93034ac70bb8d4ee41d3bfc6f99fc0e161
Date: Mon, 14 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744638593
