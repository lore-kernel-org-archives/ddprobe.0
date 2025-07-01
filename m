Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C05263C6A
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751401794; cv=none; b=C/stxZ6N0PsF07DHeoMuZyyOeM+V4eYyn2sJDJQ3l7UUZqtUmXj22lvM5apERa3Vf2J29cBLkgUoBlrzBgPvrPB1cLfnjTu0HNYpaMUwTeWK9dEuExdVVDpgqHOipDFn2+wSV47hJxwpcVw0dyZ2636FZWsVDdOM2kZpJUOSgiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751401794; c=relaxed/simple;
	bh=pqg07D50yh4eNDntm7MqOJF0Ny2ry8g+SLkf+sdGfSU=;
	h=To:Subject:From:Message-Id:Date; b=P1TuuwXmVdLRiWCvTGP3KI6JGC4gaL4S8HKP2RMVTY9u9n5lD6MijPcKraS7DNnVKenIF3ep+1YX/Qs8YzAc9stbki2xJwbsbrODkvDlugtEu6oltGCOj2Fmqe0gVQV/+lnrKatJUo4AB4eRO8g09DVTLEOOE0z/ZdWmXwLt0Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPRL3sbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPRL3sbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35CDC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751401793;
	bh=pqg07D50yh4eNDntm7MqOJF0Ny2ry8g+SLkf+sdGfSU=;
	h=To:Subject:From:Date:From;
	b=gPRL3sbHdH+6LNe1lkhZWPHsZrlJKoaCIduCQzoWQ7t+q4bC1gdPxSmCqgb3NqkVm
	 yzLTICkCr5dpXX3cAfjRLwpd6qqSKJc1eUifgTZzkfdcFyFiv2kQKjM6AN1IzAoDJR
	 RQrVdr9HRxJngSE+rx7IDiw57Cxg9KyyNyuwSd2llhHTnkSuTkz1MWTkg5FfSACFEN
	 Ev9/h+qSVXNjkn8BHu0fdjimwKUzmfsODl9KimSyL6R1cZdKpEJw+noGoHBxjx9mWK
	 KAw5HgBesIARzDoHHNgrjb2GONY87ynr9aZa9xls3nUONe4L9ewaWoVVIcAlYJLGuc
	 hBDySP8nO4zFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC47C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140179358.17268.14645326009284366783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e832fb9e8b01a2ce4ae487210622791dbe23097e024d0f7702b92fda78099e1
Date: Tue, 01 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751401793
