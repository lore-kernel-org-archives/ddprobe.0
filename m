Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE4E2F84F
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748725194; cv=none; b=PDyaNX3mviPQF5k/sRI++21idPmu1eJx0PPhvg+ltX8oc4Fz8T4hxSCTpa9tUMbN2IYXix61FoujFOD/JCXt7Hfz5V6eWwMhhyrG90/4GfXdMCzwDZd6bCJaLe/ZuINoZMJjyeXYTTQ5sra/3auHOyZqUpqcAYB+V4aB3v0/YR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748725194; c=relaxed/simple;
	bh=coNEb+ajdsUTNRT73TZYfeZzs1u0ZPjUECLNMHChxKU=;
	h=To:Subject:From:Message-Id:Date; b=e+0exNEEKyyhHDQJDSfteFrj0BHVnjEuaVlZ0N07qTq/8SiZJkV91url5a4dZfr18JAniRAHGHzDcb2N0BOR+S88DLgblCRAZdeBNIcY1U2V6sWsrnn11mrBpkt9G0wtjkSCl06ErO6b9cyYMXAPapnpebxBg9PGRjpQVvRAdlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCg15kqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCg15kqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A440DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748725193;
	bh=coNEb+ajdsUTNRT73TZYfeZzs1u0ZPjUECLNMHChxKU=;
	h=To:Subject:From:Date:From;
	b=cCg15kqkZm3uUW7wvcXhcJUwYbcuYzruJ1tw1imJ4Pv4nU/xZU+KGjukWakaV0RV9
	 5FoYFtSqr5EhJtc3q0a4g+FWpaG0y7U0yWDHjTRcgf6FdRdFLvH+XrRvxePqEJMV/z
	 GjPai8ajXWvDIbF1XdgWY6tO4Urcs0rRBhtfG86hHNuAyAMJOTelt0pYIOFxdbumuD
	 1nNGWfUpAGGAVodiLPrd6gwiMzAYHsWLsnUUne8wiMINi/dlfPqeatM1hW2tYWb6Jl
	 LhUsq+5TiS8HA5FlrkcpAZ0Bx+YGCfsKcPg0I1W7+tOWPswhYQi05+czEvkjJKi177
	 rJZiOKhGkWLPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936B4C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872519357.12489.17399221990035399290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894c40182f752135af24b4ad447131d33d50a3267555d4e5b8e9a980c9be76c3
Date: Sat, 31 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748725193
