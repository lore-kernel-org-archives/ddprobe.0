Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8511494DB
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769856234; cv=none; b=teKjeESNZfeJjq2UHFeqxizSyXqz7Amr6Cw5t6Yt80vs9THPte0dS4lY9476Agt/4VppDzlQTQf60OcXHjiSf8hOS8/mNsUK73fU1h0/6H5T8lfJQTgjqGhy15ClhFrusOiUjGYRQy3x91noJCO1JzWzaSqfOYmjhAsafmbQsjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769856234; c=relaxed/simple;
	bh=R2Iow6fL8taoWpBSkuNjvgGqv4nss4RSWdBrPKaBxjs=;
	h=To:Subject:From:Message-Id:Date; b=rGvpm2KZKHPK7wXqlJ/ipZ4AiYv9RwInbGcp/NN6+RY/u74ZPRydSRBHtXpaFFP/o943vUrlNzKblQILpyFxeMUIAC/PHa7UzmSFMaSYwQpX2Nirmvvu9TeWw4R9POBaNVgeo5fOuaTWJIsXBWx77S3g2GG7mK8ASCfBH3htSLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toCJK5tZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toCJK5tZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4705C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769856233;
	bh=R2Iow6fL8taoWpBSkuNjvgGqv4nss4RSWdBrPKaBxjs=;
	h=To:Subject:From:Date:From;
	b=toCJK5tZEeGMqOPtl5hSXipJtYJ+EL6sKDVIMqfsNU1wNSDzU0SFhtdP4d7AkqHwE
	 cYctmx3sOrv2J6Mwu+uIOoD9D8VuixjD3+d3Vv1z88UPv5nNVwoGRFHRQy3syC9n8h
	 eAanDV1QXeFjpZBYaNQ8XMmgOUd2HBQZWj/kM9uEHxg5SoKFAHWuX+2FnxhtVvmBoN
	 SXAH6zm9cOOQwtmtuVR1gw09irMKU4eNl4sn3FHQBBCfDTM1/Ne9pvXOJwKy958sEi
	 OxpcZhUcsAqt1pWkpN8e2DVMhgZpbu9otzWWuUDuSBZDe/Dty/zFLNP56IVPMiU0Yw
	 tuPJYsLKjQtQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91522D79768
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985623357.14669.413462548991192806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83ad49a6ff654477b9d092c0ba1796aa5ef8abe3476e71d2df8c242c439c240
Date: Sat, 31 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769856233
