Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAB236D4EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772217894; cv=none; b=t7lAnEjilo7MvKq8A2FOjcVjWktw5V/LdMJxhEkwdrlISyeLgwY7B3+fNYhRiABA/ktnNuHMUkrwqRFWBTsQO5l0O0JxkSwazko/d7w/xOCKFMZRSd4qF+OSNUupHQKTWH8It7Nj68te8rlORyZeCJ1g5KE/jJEHmSYj9hKQXZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772217894; c=relaxed/simple;
	bh=UjB9VN8RQt1KJAhBQt0Ds+t3jX0W6My2EMOYQERDXgs=;
	h=To:Subject:From:Message-Id:Date; b=XorVi6TOpwJAqhdteLC08JM1Fx4Y+nK7tbvcnEfpCg3pYP9NrE/33Y8m/vQW8BAn/2qGSBWvv2AKSnevyLJFlBKf6QVc2Iv+iI5Io+Naf/6YTqx/yI6O0OE40XoE7MNS3efdfc09tAKgB/Om5vv0j1MDDwY279vo8jYb2lp7vsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jjf3J3iD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jjf3J3iD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A12C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772217893;
	bh=UjB9VN8RQt1KJAhBQt0Ds+t3jX0W6My2EMOYQERDXgs=;
	h=To:Subject:From:Date:From;
	b=Jjf3J3iDOvj/LXOD9++mj7iOx1H5zqNZiVPMZ4W8yklqrT/swSA3S1h/ITxlmZ8uj
	 WFOVAP2g16S5pGw7eDoFX77GyZz3qoPDLuURnAjx9oS8xwyfMRAFHLqV9ltXmW8b0I
	 TFvUyx8c5Pdj3fSrwzItRAcO4yuUXtnw6CuBs6K1GCBLV/NUaKc3hvAjk/qq6+pg4Q
	 a2xr5Tz1t9Wi9/r69OP7C62bWR6FRNRqI29HnPF9dG+awI0zE41SV5drhmBdWlQJaH
	 Ic2T9xXj6bMMSr3xpUoKiFERbciNcMAGY545u4r0BQGMaN3la5iwRzUWDIzYEMY2R7
	 e+/Z777EXzjNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FB5FEFB77
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221789358.27160.5234067150756153717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6734b1b926133f49d66313ba0601e9a1a6cf9313c1b1f169a649dbbdecfcd57
Date: Fri, 27 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772217893
