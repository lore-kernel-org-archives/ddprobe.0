Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FD5387353
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774538093; cv=none; b=CcQGC2M7eJW8fvUYGjn9kLgbyg57WSn1wg1s9JWJUVkPHZftLNFG0Ty3R6+dZp1kPW4CPGT/NuSVaT8o/+eOkld5WdFyvaj0TTHO0n37uzanZerUW+FJu3oFTAkXUSrf3YZPMLGdGiq04nnMvzTVIdN3SZ6mTqtGDtoEkfcfIdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774538093; c=relaxed/simple;
	bh=9lDyAh89GX9ojwBdmpu+07jJ+skthgB8l+RcVzo9zqo=;
	h=To:Subject:From:Message-Id:Date; b=aj9bZi6OgVa0iLvxZsaNy3TqToHZbX18z4rmQPtDBuVYS46AVXDJpgOjOwvEbCHaykkzFF1q/FJ1UyBvk7tNCv9ynnAIGxhziWhJrtLB85DWSDElRFZmPRdWh0+ALJWjtpVPPUSqzzfXkhz/fptF8mbTezLODtuTqId/1Yt0XRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmcjM52m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmcjM52m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35BFC19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774538093;
	bh=9lDyAh89GX9ojwBdmpu+07jJ+skthgB8l+RcVzo9zqo=;
	h=To:Subject:From:Date:From;
	b=tmcjM52mEyvCTzlhWuqmxLZ/9ynkwQ0RoJ2uaFCOlKps0TwJx09m/zTcpMWBA6rYF
	 3SKuueny+rsGM+rZoz43s8DMi1g14mn2j4LwLSe6xJcUBvOK2vVfqAidSLQeDspTtC
	 /Q8+AiD/eWGdG3c8+ReTSEjIk9QVixa21WfdwqBQQPwiZWN/8sdVGYWQYiSb2awK5n
	 kWo3od6XkJbSaPRA2wX3skEQQb0lVEaj04sESQdLzLuWVfr+K58QvPqyThkG5Dsgy5
	 lFAwADu+E67yvrGfL5gWebRrdDgRB6tc6A1V35BFZDmtKTzgAg92Qt4NOlmwNplj9C
	 Gg7QMheHD0VUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A363210A88C1
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453809365.9469.17612083091655828380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c382150e1322dee20fbf8ab3e5c48b6265c7b5103e3d3f1a9cc17162189877f
Date: Thu, 26 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774538093
