Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CD1111BF
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755910194; cv=none; b=TRGaCJgy/4p7KNONiPtwaf18WtzUW/NpaOO+v5KTmv1UiHfykcu1RJr0ZxGLVAxKl/GnVwZxOjI+OKPg/nspEni+BO08i+xfbnu8Jeye+Rsgp03HNcnA14OJVjJqQLOD9itx8I7KzVbdOcw4phR4cUNjR0IG1PBQc5NE7megG/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755910194; c=relaxed/simple;
	bh=BGDTDOSF4K2LJchwWWt2d2YnY7m6ifYDGT+dvgjyfXo=;
	h=To:Subject:From:Message-Id:Date; b=F3zLVvvOI2e8/No831QOywihwneEG8x2YbOY9/E4HL57jC33dn7CNhZRv0XAHwiEWO7nwLrTsyg/7R3WX7L8nCsYRnQqwpld5N6sLfLt2llrVYWIgkZqWFN0MpTkKMi1pZ5wmOPIitYsFEc+Ye24gLKWpyIU8FuQKzSb5OkY3oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWcibgeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWcibgeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4397C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755910193;
	bh=BGDTDOSF4K2LJchwWWt2d2YnY7m6ifYDGT+dvgjyfXo=;
	h=To:Subject:From:Date:From;
	b=HWcibgeY44Hgy577xsiyE1oXGmOKgmB1jg6itjgfoMSbOaQOmjf5xwOSIExV0DxUC
	 ySUpaZ/muU0w4roOB8q8WpGsGFfjAE5DxKT8JJPf+14861zKctaFLwKBryJ9ELnO6+
	 ojF93jgl2d3pgaWUZRpbHtnxJ6VPqm1CmzqMxIHzS9cMEWDGk/d3qJENrNpUbD4Ply
	 UyZiWcTmnSNRjMCFhy6anzVRagk5CizZC1mONhnFVIsqkHMH89ZnSMspcbYOIUGE96
	 mn5SOARZjyFdXZXH43ud9ncF39X/qv/lbvffayhlle4AL5qxi0/FdapXLJw5G1uO+o
	 V9nmA4edOb1hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92800CA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591019358.3358.454317273079646726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77953d42404f730003119af8ff1f5e9de8033c39fcafcc25a50cce853d617d86
Date: Sat, 23 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755910193
