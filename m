Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E80830649C
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785567034; cv=none; b=DnPs+SUxWCAl548M53Ta2izDvTEeIabWEt07mfRl6a3+vw54lntE3nku914wHfnAgmrE1Wg1Nw0EhHun3K3MlNtEEqHp+JbrrUI7S3X0OdUGPW95fXCam+GlcCtTlvNtp3+5Zzejl+OARDVaTh+GebSwxW3/AYaOrwnUO1ZdHgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785567034; c=relaxed/simple;
	bh=Izka/sHt5xOsB1GLocE/T7laa7xmjN7XaCMg0GVNjtI=;
	h=To:Subject:From:Message-Id:Date; b=oyXNF6/uYR9ZUPEf+G10OJgMC2fdMrVVYK2niYrEdf30zdhMMdIL1OjxY7P2ZLNvUcpaouOqZH4b34Wfy4p3TvxP9bpE0ErFk2YNtQcqi1t7L2x9HuFyaRDFiXos25aGhw4q/dJP8FF0IMtQ64tthPbIbqlYdAJdH1qgy9HAMgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkvuMQnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkvuMQnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0063C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785567033;
	bh=Izka/sHt5xOsB1GLocE/T7laa7xmjN7XaCMg0GVNjtI=;
	h=To:Subject:From:Date:From;
	b=QkvuMQnlv237x0IwfRc/Tm0toQ4g02ygvFyPoOv9KhVEYEvyjDFAzQuwquklJrC0X
	 293F7pKbUpvZv9PqykbB48mzRUdy65YD6b5J3wHcK1IA7JYJyYqtysztu54biiP9Tk
	 NJr936mSsxtFR5ZiwiFwYs38rtwNmX+FHPLds0zljt21c7ujydKU6TtJU02OBssgIR
	 dVK+u3pTN5Mfm7P/WiSRlpk7GH2kPeSpS7i7Mpuk48FhdJT7MUTETdsd2PvL50lj45
	 bYgda74bhAgdT+i//uKPAk/+ivLfIxYwxhObiwY+HE6lI1x4HRjY9A2uwxYtbZ3hpm
	 4I8pnPKZalWKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4F9C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556703368.12454.16710175184200904185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc8e1ef80d154a0660aa6753c20b1cfd0829ab92915693be4f8763d4f5b22e4
Date: Sat, 01 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785567033
