Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C92200113
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758899993; cv=none; b=ajaNvAHrCXIc6S17+ngff+jWjDqNqb+73GUC2/rDZlT+LQLuanWTN69IJBs1RskXB2HDePcFfsUEnmYZJ1fa0Ik57FCPC3j5OmasSpt7u/HNBfUeE1R89U8B91Aju4WRogc3GefDOEvtrkCfedAIh2LhHNmFe5/1QvYTW+3/REE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758899993; c=relaxed/simple;
	bh=YABpZT29pNila3zD911sUxozmaVQaaNUU/d+5VDhcp8=;
	h=To:Subject:From:Message-Id:Date; b=Ob18YCY44g5VINEzjG3ci3SFWNuwaIrAM7O1uLkiREvZSrp6L8God190lutzi0nEC6XStQA5PA2aANcWJWPfrMwoT/gebgWtJKmiIMueVg/zbRjsxkRT5t8HJRMPOtwXPBCNeAP/RUKlsYZAOWJvdr1RmO6OhAACpu30FL3rcVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+HmgRNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+HmgRNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FEC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758899993;
	bh=YABpZT29pNila3zD911sUxozmaVQaaNUU/d+5VDhcp8=;
	h=To:Subject:From:Date:From;
	b=f+HmgRNOXIG64AqcD5ZRj+BZJ4DVEDQmpMv06h2YScbpaHi7uA6Oz2Gfu/WkBhhAD
	 3/XS89ch4hInrK9eYuxOmHJXDkxa6MiSOLOsYJR/1ya8eMDzgHk+VN39kNxhabyGfe
	 HzImCxvkpocN3yVjU+dzsfVGWUOHISlOKm/91vmetzG0NrAo3pwl0OSc6iJvmgH+4F
	 OdCP4QmLZodlTr9B8/W0yfbcgu9/4sZatpSPmjXwammPhjALl3lLPoD8q4Rn7zFGBU
	 d2+qXOitDMZIjk6gJ+Lhv5O6JhAan29FQ5iEb26QeW10WxXUQFT0fSvMSCe0W3ET/2
	 vm7ZSkulYH5nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B6CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889999358.12005.12149707641159993039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4113116c54ec41d34fa126bfa94cd1f0356e5a0a537677ef83886cfdcec0eb
Date: Fri, 26 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758899993
