Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53934570E1
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785857434; cv=none; b=nQ46T+i76O4z9y32m32eHAVD2Zk+EXiN0yJJvavfkZxw0DI3T17Prxyr+VkYeFybsUjfV1C4fiOus1iEj26NwjF+C38JnoJk9uAPJtzaj3mzvzJUV6PSZz28p+JRsaOBFBfY9OUiMB25DA9FAgk5MoFaNcGnV56tYOh/bZOTup0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785857434; c=relaxed/simple;
	bh=7JlKxe3rJfzXjC2dg42AfQlHif922560xou6AlOCm4U=;
	h=To:Subject:From:Message-Id:Date; b=rtMIcIxuSF3ZoGI8jqwEEY1J7PKKIU8KdeGOFnCbI+jRWsY89VXykc+fTh3dP39uh8RbyPQFoOAFFVTzTHLHp80sqd2Q5UHF29SngaucvsS5A524/b3U80BbIkO1GvjEZbZvLuMUgf1GWLkX3v5RhQySGE/qJscrbzV3XvRw1iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cxr+9gAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cxr+9gAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C82C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785857433;
	bh=7JlKxe3rJfzXjC2dg42AfQlHif922560xou6AlOCm4U=;
	h=To:Subject:From:Date:From;
	b=Cxr+9gAMhRyz/3DKBjEZAXO+iVtWRKY5YKQtk1o+xJguU1aW753JpDiZ3HNaOVBJr
	 HyXdx9LObE1ZQodkvL+01bWYOgI51NHQDJTIVdxBpcoIgn3LxN0gpH9baQWlmlQQ7r
	 O8+AwJvDkoueZ2PJ6oedPPuq1VV6L+58kBfili5nZLg/Q73EiQiAszVMinHwqT4hex
	 ID1NgJxVVvv9DBiobRqf5/Fe6R75m77w1MS+0Q8rfS1EbWaJrMtojVVMdZPPDYEyLB
	 4jODlHUicDXLrMP6ilJsIEU3zrz/c8MIwqOgf0Acwd/XbQjmrkLB71VrKnEoyTTBSv
	 wfvansr9a0U0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC9FC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585743369.2610.626958069151793614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8ea3cc05a58457dbf9669522990f222d93e4d693474045e3e380fded5ad2aa
Date: Tue, 04 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785857433
