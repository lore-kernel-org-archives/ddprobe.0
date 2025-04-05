Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D45D2E62CA
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743858594; cv=none; b=iHO+9NY/SNP/7pRcKQDhKRe9MINbqgMRx24pirVI4bdGoHtNG40ORLIrQ/zBJ0pUkprOJtZlJWZmDcCzuB8U7DV21zIM1PXfoKDJfVgoG+/IFbmoQJTl1A6sSK3a0jlj8eiKwpkLeRSXA3rQXRR5nNseLNWWyufQ2Y05W43Zt8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743858594; c=relaxed/simple;
	bh=sFwImI+RAsnIzQfIlC2NVpbl0ZSXmOXFn1P0656cE/o=;
	h=To:Subject:From:Message-Id:Date; b=mqB2WU6cMt2+Th6CRcSBPH6RdrVFjmocvQdRkIvSQMsazbuab7aYzetcS5XZ+CSbJSQxC9rTvQgL4j2q22Xs0vQhgxOIR0BO3fKjY+cwx0OA7MelY1SxcQWW1VpOVMshcuS8eQ1ZnOQTs9zqD0F85JkKN3rZ6tETaOA1AbbAvAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7pUzWyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7pUzWyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F69C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743858593;
	bh=sFwImI+RAsnIzQfIlC2NVpbl0ZSXmOXFn1P0656cE/o=;
	h=To:Subject:From:Date:From;
	b=q7pUzWyU7dCVX7SegpkYFJUqzQ19fknsEm0ZaLneLv1VTQiRBHvyYHW4j3kXp9m0l
	 sj0YwjcemHvVD/FsC2AbdYYHhQGDQJXREhwNQvpTiJSLycbReFdjwk4ehOBV2T02cs
	 EbP77wfGof5vIRD0KXbJ1/LYjOcld6Q8KeiafAT+oRzLdky3EhLlwYXBvrQUI/wPYl
	 1PBVueMtyiYxuGC6yEKPvlFyvrqU4WGnmH6+A3MM2gBVRhMy5JdnJwOgB2lEqTKFAT
	 kM4BVK5VeBwQtJJTg7XniGRkl1eb0XQ55Fj5/XM8kR5XO02Wx/YEAHJ6SJVrxNo7Dc
	 YzjyxCVM3k4zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23A2C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385859362.11831.4320770656242145200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48fe76f1245c86e8258eb1753e757d0f89bd1d11a1af23cbb3861a9cdd4a775
Date: Sat, 05 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743858593
