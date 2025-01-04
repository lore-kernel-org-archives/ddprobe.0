Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A5815AF6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735967754; cv=none; b=FyHePeeufB+b9yOj5/wIj63Hf7A92cXoYhg3/Vmw3IKw+5JV5N89Szv+w294r7Db/uodwa6f37YSd77ooFC6tkYJZ4cDLR3QqQn7+H7gfIUk0AFlTI8ljFP05jeSxOYR5tGR/4fRJ0BY9Q+Qs7I/yiLBz9D2UiAvX8LpDXRxC24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735967754; c=relaxed/simple;
	bh=I0r59y/fR652ychoKTfBgdvL8e2RPNy6GtP2C95uBeY=;
	h=To:Subject:From:Message-Id:Date; b=JqkwIAfYjABhDEoUZF9zU4hhgGjBP72M/2xDXKurW2FxclHkLgy8d1ryMmsWwlpP1wQ7DnqLVUE2CRbfCleVFVQ99uFVUU3yPzmyx4xfJd/K311vqZhRlcO3gmWij1O1aD0rkbtDoEQ0xlWfMQOGrzw4IzD8hCG9/c5h5XCOxhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAfft+6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAfft+6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56A4C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735967753;
	bh=I0r59y/fR652ychoKTfBgdvL8e2RPNy6GtP2C95uBeY=;
	h=To:Subject:From:Date:From;
	b=fAfft+6B5jyh/Sc2GqgXLpGTV11xjZ23qhlp9ZpzDRo/JxepqMvllrf8f5afMdkmo
	 o+mRpszlFtzZaMtwuXtsE2MP2+uOgxjF6uXSfKGnGdEDOFlIyB0HGW3Ae1cx/2gZBy
	 ibkFAIQuOEnytu/slXSMNnsArEySXrxHcyZUuxUqFaBLfj/deQRnzMbuR4vEFuDOZj
	 VPAqQ5t67xvwYQFt6ToWSE/1TF5Pe4IFqMguuyMNuxseXsZd/FeaAaxdNmeR0Noi0n
	 Ny1xzPe2JXTXTqL1JkQJPWINPAdHsi3BD2SoD9njZCiuCXHrxEFA7oKXbuLy/0RvLJ
	 RqjJr5ZHFHA8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE22E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596775358.5497.17989818133759769387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b28370f243bd518c10a976164e4ca5893509ad90be1910695fd34eba289a9f
Date: Sat, 04 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735967753
