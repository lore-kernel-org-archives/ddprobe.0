Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A4E2405EB
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791858634; cv=none; b=GkZt8F2+2N49NtYPGpOgArEOauC0nPG4pRGksyMeQOg44jZNxgWPkjF/oxc6P+R1PaaRxBV+zHz//B82XO9m8fBv8RJnb8mPOklt5SzwjzpJmWyfPdJuKTqtppr5qa06VZcL6FgF6H5aHCfRIKbHFx7bGYJMGjwZ76X7IO/HmMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791858634; c=relaxed/simple;
	bh=SLTeSkc6YZKKsldLhSTkdNrfmhDygtdueqRf39sqDlQ=;
	h=To:Subject:From:Message-Id:Date; b=ZcrZOMG1WQUWXWJSDgTGNtWMFPk5HAeLoWOP4GBnQ0vCYwoYAZwQunmsD2oj1PR5JrNFADQ7RbmnNA8dVBGCkXgEMYm8l4RehPfjmQPLhVmWUK97DzefkXPkAtXRWI31mng4FayF+mzMVjDtWnvmM8w018SBm6Agl0mnnDqcLp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYcnAtZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYcnAtZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6028C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791858633;
	bh=SLTeSkc6YZKKsldLhSTkdNrfmhDygtdueqRf39sqDlQ=;
	h=To:Subject:From:Date:From;
	b=WYcnAtZPnH7sTdilrR1K3mOgXVuPRWYaqEf+2bvsRibuClpL8JuaBJ+jKkPJs6OEc
	 XnRhaDPmaOL10DuwCc3sdh/DBOm8Q7jOuZ1uuvmUir3GTF7MIBz7Tbug91rkk8faNL
	 0Ank708YGIlOAzrdckvEYPk7DAa3odwKP4676pFqGkUt4nca6Dv82tjw2yF1LW62IJ
	 pmjSy+zFiiduytcBeTcxWgd5NO906lRx2uUCZ2nZ3u//nma1ux3X77yNkkGgbB4ijq
	 KdNYhZO+mSAfktUqMu8/eVEHyn2mt4rIDNFyQJFAa9kjauK9kypFNvz6ArAIkYCbcv
	 FoQHW1yP6bSrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DAACA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185863368.4895.14522585863197510773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e072f9daf2b9742868e2c474cb875dfb606cb1c45f5c9021c54b7e49966050
Date: Tue, 13 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791858633
