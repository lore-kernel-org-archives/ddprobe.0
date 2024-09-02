Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3831779C0
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725246354; cv=none; b=h0Js7tMUQ2QOo94kGF8GQSQS9oDm5u6LI4IniZqxnwr+1csPXFj7es/2K4SrmTtSGmJ8LwLj4mhEvh2ISTp2KC96eLrA0WbgXMN+4w7WisPJa37QWVwNiOsxrU7hm5pCCQ7ZYv/de7smqxax/CQOzFlPmUKx7fExKfkJcPMWkzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725246354; c=relaxed/simple;
	bh=h0JtTU6urbtQ3MDccnrN29f2Fgv3On70TmNEEOaX9Vg=;
	h=To:Subject:From:Message-Id:Date; b=O6ea0FtBvLFc63twpBXfRiCdfWzLTiYGgp9d46NrlNpSNXLlhgMXlAO1K5jcvoSPdVHZVrt79lrfboZO09LJr35HUZdRLgyMQIdq4vaAkdmc8GA4nj0D8cbWnFpEmvEHUWFZgSrD4GZNlzBKqILe7uyGUgfnI5Zcus4uSGulwBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTV0Vru0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTV0Vru0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8B4C4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725246353;
	bh=h0JtTU6urbtQ3MDccnrN29f2Fgv3On70TmNEEOaX9Vg=;
	h=To:Subject:From:Date:From;
	b=MTV0Vru0sWc691KC4XN36YWq4qm/tKjTE/roTYZceowbZgD3ry2oBZ+YFHAk2I5CB
	 9uYH+cXPhb+91BJ10OcrsPrXZbryzQepmaOXif5Obw/dRmVr33sXB0wAeRfp19BR3t
	 6mPc4p7yIM1arG2l2Gb2OeV2HlP/IXwsd8IL0on6LHjSVPN9d8hVbm2beTnKo1/DD9
	 /oIZsM7dlGqoeCg13m5PD8X9dxE9BEKm/+OjooYXZ8XVHGzz6I1CaDDxkksP41VG2z
	 nXeK7PuMWS+zDL/UO1XIty3qiaCArEC+IFpYsmFCNzJoP1BViGoGdxahOTiL374RrF
	 eMo9jHSHlR7Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3E8C54FC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172524635361.19785.6942916697268582704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d2376b8b91b6911e5e468acc9b0f8eddac4a6a1e1936b694f2acc95c04cfe36
Date: Mon, 02 Sep 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725246353
