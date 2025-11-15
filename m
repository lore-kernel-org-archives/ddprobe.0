Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACEB137932
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763224194; cv=none; b=qUW0edU9UYdXoRYlakA/eHtd06K/JeodFQuymnd2l4zbg25mBB8IlYFb9dXDFbA2nOnNQAsRxuvbhPZRX2Y56PEsYe2BsSLAxP6/K3XW+SvsHXwLfk7DM+yY/HYP19++xAJgPpNRGR5JH+yCvbGEpRFYsZoMG+qQOV9ZFDhWV80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763224194; c=relaxed/simple;
	bh=FYddrIUNHo4sKIjTc3qm9ZsZ7DfueiQP2vICkjTPxhA=;
	h=To:Subject:From:Message-Id:Date; b=WQqbYDTtMVw1GSK2ULv18csTi9wpOj5gcR96t3kiAtcVzrxYf/yVEDDFO4LwC/u6SsZWM+wx/VbvdURnrQlWXhrP8T/G2tz7Cc30GbUdAm8ZTs5p52uKJhoHCcJw6d2rDuBFuTqE7S5AStnoyZa8UtJDg5HKShtHjgQh176gpg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4GdTCDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4GdTCDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E30C116D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763224193;
	bh=FYddrIUNHo4sKIjTc3qm9ZsZ7DfueiQP2vICkjTPxhA=;
	h=To:Subject:From:Date:From;
	b=c4GdTCDCqCv7d8UVhcC7nAxmT827Njhd0mfi0QU03zevFrKdziUT9E+h49K+5IP79
	 ODAyVtbFVMWUgZSYwNnZxbfy8KhX4LyvwT/xfEbGg50o16irf1Af901HU/vkkGZMbX
	 aKcf3IOCfN/gpDN7H+8YptSP63oyKUnbbeknDQe6E5R7tIIARpMS16HW6kb05pZh3O
	 iMTJJUT8XT+vbKO4Nep0gVNCkhFum9pQxGZPS5AMCI7qJiyBFebnJTTQIMKhzRXQ4p
	 HE4cDz/GUBsUtA4YoEPKO/GryMy2BNy+Y5QgoObfvwoyQzeS7QIYDYWWZiuZ6vruO5
	 +f7J1ee3gxO1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A60CEB2DD
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322419359.18549.8290388537744070774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ed4442b351663fd2f9e2181f1268281f0882df8cc2e7f764f17e6888ba0fb9
Date: Sat, 15 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763224193
