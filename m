Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC28F3EBF10
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769291633; cv=none; b=JXgptVoTJ06Y8unQ+zoIkUPerQtUHarf99AidntZyelZHKQkYzaZsdmB3HQp8t7ns09i+9O8Xm5vGHNcWA7p1QK49Gre5XAWfHdVxGh0ofA+6I8ezePOCqEkN9YpRblmwaskx4QMEKTuxBiac7MzqpLWyMszFkyQHsj2YRv01wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769291633; c=relaxed/simple;
	bh=SFWHH/Fznh//45t52ZqKjKgj6/3aSea5+Bk96tpEl7o=;
	h=To:Subject:From:Message-Id:Date; b=X9RTxwxGcTK9dvEYay20eMIxsKgOiM7WkvhF2VZFTPBqKE6ldIPPMNwQOOq4kgU8oCYxJO6op1jjrKDpT1HXS9s7z2VgqqI/9kTjhq60GyvFJtyDt/VgTyIox8sApM58VydQXnhm5hl0hvOHNo4TdJX8th+tFqku4zpmhTIkLes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5e4f1QE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5e4f1QE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EB4C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769291633;
	bh=SFWHH/Fznh//45t52ZqKjKgj6/3aSea5+Bk96tpEl7o=;
	h=To:Subject:From:Date:From;
	b=j5e4f1QEMOGmx+rOsDitSAPN2r7Ig83HFVfzWlFIISCptOGrUeD3CJkmf5FJWMeao
	 SJBuuZbXtN6K8Hw0iKdM1ey89aM2jlCNBJ/BvgAxcBOFuC9gF/7Qul3mK5SPDbZNwJ
	 zvKnz7AWd5TDWfpDyQRRqkj+XuoAEu9s/aIy/yJUx+hnbCLAaYP0PsCQ+w5O5/+z0J
	 K93RLOeOkJNz7ZumzpnpteF4xAzC2R3HdcCP/R5hoFsiR8hWU3jxjzBnidr/EUyTsE
	 MUex2eEEBqRbVkn1ZtNZF3Gc4H5gWz8QPyFc8WmyyRegHaHPZKm15RuS9N7YaFlw1n
	 WKM4xQjySjifg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBCDD715FC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929163358.23686.6619362755699236163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ecb1b671b5a6cdc83804b2ae245b20c1c41ce690986fd59cff1e0b36093ef86
Date: Sat, 24 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769291633
