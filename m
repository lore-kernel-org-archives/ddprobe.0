Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202B61E4AD
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733148954; cv=none; b=NJhX4mOgsSi1h3EycKJR8LG9gG2xFJ5FWleyyAXzmHEGhvdz8Py1U3fwb5W7VypYGdVqeF0U1SSuMZGDJwnHVTpHNGsC/1YHMebKAbx37imXV/CxHOwJVEP+/1kQwpsQHi87XCTvmiZFp325IpDJELH2cmKX0rmtNbkHSUb019g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733148954; c=relaxed/simple;
	bh=gGY4flomVE+BbYYIXNxseeqWlgnhh4XwH8Fpg3eKwkI=;
	h=To:Subject:From:Message-Id:Date; b=sozX00nosvz85FHCchbWf6RDvcriQRDdIS5yXTAPjt4XObxnq1nqYUDg8g1ckGyotbzu5sT06mfe2CNdaJH/der/JDl4+EagL6/8oKed8L9ysTMaln96juO6PblyOfvizgd24PJ0HdjfGV/Gz5D5xU0Yrs6mfK1oS1X/g1uv/n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+cZTOxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+cZTOxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3B4C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733148953;
	bh=gGY4flomVE+BbYYIXNxseeqWlgnhh4XwH8Fpg3eKwkI=;
	h=To:Subject:From:Date:From;
	b=A+cZTOxlT2fOT/+fd+FlO2vSxtuFrm32KIzcRIcg7OffMZQTQIpgPk7/l/yeL13z6
	 3A5J38cxSLDX/Kr0BZcPSQDuEMegHKQjIKSMWQmv55izOhaflTwd5VthshHqXKGY0l
	 eqZBHySL3GTLoLlKfSgw/WJHF0LquwpbXlN9LY8Ka8kkIl3YMFLv6nudEKQMeYqhog
	 YL8TzBb0oe+dDJyQcn1QHHeODquEEd5wAtgSnZCmhXjb8oA13xP1serO9lrS/a/Gyg
	 XqNKINRoMGKmRGQ7pOt9bCjLp2Tj8dX7PTlvbfT5w1NgQ3sqpTIjVB6izodoz2jQTI
	 ikRdjV6oXDX6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9531AD78321
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173314895360.8092.4130262136644926676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c3289962b5627ed04b9da57d3182c5e657e1324347b99c5ad81bde86baef18
Date: Mon, 02 Dec 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733148953
