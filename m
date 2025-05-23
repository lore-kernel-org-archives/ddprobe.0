Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424742DCC02
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747971594; cv=none; b=Qtf9sYv/VaOJ+m8sG/ZHyh/WCBk3xqQhVBsqZU8KToH8+hxh5zEE2xIHw7fggoB1/YNoC8SjtV1bM7HbMbtY93buzmKRdm3ssJghfjoqLue7r+c77jN7HAQpbxpndDBHEoEP05cvSvg1ySRUv4FhmmuvOHEqCktPvDH5Qn4mX5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747971594; c=relaxed/simple;
	bh=cuVSO1eshBseN3xs55+ImBGRp78B8P8xe8JuZ1KsXg4=;
	h=To:Subject:From:Message-Id:Date; b=MiotOXHRwE8O1SUzuqw9FgNPAR6IGJXPrHHpQmLhrmyoc866nrbeFcWWb0erg89pSEc6DjbHtC7dSJkFB8/IQfbyBo6MbdCLYrgPFG4cA5NiAASSMDVq3ahqfHfcWgotoSKj1gevOlSJYot5RAo6TmWyZQ97TrB0gEaydnMHrm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMfAcmOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMfAcmOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E71C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747971593;
	bh=cuVSO1eshBseN3xs55+ImBGRp78B8P8xe8JuZ1KsXg4=;
	h=To:Subject:From:Date:From;
	b=dMfAcmOi2voeTMYFwU0v7pbcBquZMP02vFhOxsI6r9VHxgxrMFHtPLbbUTjXoG5sT
	 g9f/E8OY1u334iz6mzZfo57gmTyUtW+1RQ0TEJ6jMq3PbN1s6vcvEsNslPxrRUSAKH
	 hFdrtyciKV+1CUZ2jMMfZentPED9q9HdKqGHjxoAyJaJYRleyrrNzkeDnpYjjCIPxO
	 YhbJyqF051OPRlirDD+qHXF+7JtfhpJ7PcxEcTg/9/092IzbELtwdiPFegXytq+R4N
	 PKjN5hB+W355stkv+vTYiH4p846uUsssscqcfbiCTT52/FZzns3sMcw1E4euTE+gfs
	 dS9oD0XDtOebw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2FC54E90
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797159357.14282.5202547239863487763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6f0cf6478cd96baad2f3da686176b79016dd316ce3d859f5a62528a7eb6d1a
Date: Fri, 23 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747971593
