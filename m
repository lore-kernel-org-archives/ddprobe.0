Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0991B3815D8
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774302894; cv=none; b=Bn1oH1LUAA+a9pQj+8QUiGzhT0Ukol3yO3rL6J4AgSju5KgBVAsju/+iUD2MH6s54APTtRdm9ydQVfwc2mxcOv1zs8IHpNAlzSTtn5JytHNR4RVOvTdk5KTcj7LGMKoBfm1Bjy9Fcz4rPc6bAyInjrgNChyTVC23ntrLJpYG2gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774302894; c=relaxed/simple;
	bh=o+rbEJX2V7xTnKwVNomK/VzSUrSVpk3SdyG7IJF5oPE=;
	h=To:Subject:From:Message-Id:Date; b=iZ5Ib0OzpXdVwarzTue0GLwZ2hgrUlqlid1EO0FykAeELO9ejs5I/MGADP/wzI6Sp6q0R5/BgtSwuwPj8+QwA7XplFmYZ++XbJ0zkP7IkCqtYarvW1bmcw9EumwprH72ZvkGWFNqbaqHFs5YKzFDRGsMsmtNpO/ZXp5ISeCnQcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4xQqgAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4xQqgAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5946C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774302893;
	bh=o+rbEJX2V7xTnKwVNomK/VzSUrSVpk3SdyG7IJF5oPE=;
	h=To:Subject:From:Date:From;
	b=k4xQqgAKn49B+IJm8hp+v3wCoJe0UuSthovvPRQHY8XHkf1UQYTlp9/FINaF4wawb
	 0HDAhtRwdL+tJjJgmvirIVTxzKcR8NmdwAuzoGHTI9rlzvz2wITz8L9yXHf8bSpNWE
	 QFedyK2QXqGWR3XEz4YX/xfWxHLshfImwRHCaBwxg65T/aCesZwFFe/Eux5ViZeyXp
	 Cckvo3+XR/88ET+HlYAyU/VrP6QpgFrZbO7CGfGFV4SpMwJ1tiLnjmEceYj21/obzQ
	 mOAL/dG2DNVASSgtFph6vmMCj40bOoyURgWD2/Y5desJkDjpZhAloiBHgXFjbgagLR
	 WuSkEHsRZFMSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9724CD58CBF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430289358.29059.12357422533840249268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cfa7fb4f9451b659b6a677aa7ab83f287a404b5bdb034a6e799a783d2aaca6f
Date: Mon, 23 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774302893
