Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E03A1A9FA0
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777511254; cv=none; b=u8Ic7X5D2kXuxDif4GRrb424Ap89/RSVA30b1oh2iwZyaNFQAJ6lPnoAMqeeZt2B1IdS1mpIH9yoBetNahyN0d9nKzbICHobUpJDzADErJIISbiLn5p0RQOlwOjmKcjCZEvBv0QH1R87xg5qSXyeyFrq4iO212eIgOKreKTK+f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777511254; c=relaxed/simple;
	bh=y0JpdZVoBrYVo4uKFVQhpkrOuPgNH1R+4PzUTuBGUs0=;
	h=To:Subject:From:Message-Id:Date; b=eTaJLd00j4uns9DIAqclQKpmaHXg+OWzf3IXCZACvAhE5jow6QfSFb+VDqL4/7kigtEBCddrMDD9c83BRlNlLixvs2cn6Jt8MTuEsSt8SQ6+mvY3wHFNNDw/jrEhsTLHdncEa34D73VyThwyplZmMfiwEAVrDnso0BXh8FKznhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npLIQoL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npLIQoL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74C2C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777511253;
	bh=y0JpdZVoBrYVo4uKFVQhpkrOuPgNH1R+4PzUTuBGUs0=;
	h=To:Subject:From:Date:From;
	b=npLIQoL+6ArJmlQdzAb7qEoRuLK54/kRN11QU569UOk2te7Vsix8dz5Y2Uam8eo9R
	 0L/3zFG5RHp2VbryHyp9KW+IzFqB5hWqCEYQEr94nZNdU167Yq9x1byWtBdqF0FtT8
	 hBVHIcyvp2ggmwO2aPLHXtoXL08yJ1WrW6KRkM90UmRPPXFU/cFotu9jpBy02zxQky
	 dfQZ4tvUFrBKFvj8Qc45ScKXKZoGOnxSQtH7NbU+iZm9MI+rUxhO8g0HIyAFdTeeNb
	 AbBsklgdb/vBoqD0AFIf9zM4zHvCDItkyblzeJOJ6l82O7HZHI56SzWkhOF985iLvc
	 L+1kYAEi6Ue3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BFEFF887E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751125368.29060.7355963952358366825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd03f880a35f37cfd37c1ebc36cc0fcbab5b525f1bfa8b25ef17e828333880c7
Date: Thu, 30 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777511253
