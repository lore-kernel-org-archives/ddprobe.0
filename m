Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4BD4A1A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736387754; cv=none; b=CBGsdnzpRd9QDDeSTPqrPo12SVchZqQcwlp1pc3X64EZ8EnirrBBcAyYjCykcNw8bwNsu410Mg2YUtc398AmJESc9BnpEJfH69R95tzpKdqiGeR6gYhLi0NT8/eQR/s+XS420jiyFGNFVuEe2uAuishNJCjxBCED5as5xp4LyfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736387754; c=relaxed/simple;
	bh=XAMS7D5JfjEvjjLRHGR0cIUfefcsnXcP/g8LKhblKv0=;
	h=To:Subject:From:Message-Id:Date; b=TYwk+tK06BaKrT77uB3etaG6E0DzxhCFNhcO61OG3f5QV+oJSq7HrbAg24EHsz57XjxOLFZ2SJ14l6YVCL2Dss4g3zMohFJh5WOwy21kabo2dJ+OVczbjSFNpDCCLGNwjM0f5GH6VJwV/IxQmD6YWH+0+JimHyAUxQTjLyScksk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkyHh/DK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkyHh/DK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB82C4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736387753;
	bh=XAMS7D5JfjEvjjLRHGR0cIUfefcsnXcP/g8LKhblKv0=;
	h=To:Subject:From:Date:From;
	b=XkyHh/DKrFebkN7+2Y1riunuljvApoaG/TZ1AGCuzw7OTew463k8rZZEBKtaZNqoF
	 2cA3mWZlR3bNHP9NIaizpGIaO3NeAawZzJfTdGeeeiD3q7FXoUX0uyCJ85idC/spm8
	 Gje+hEMg59C4RHH4oQFq4q6mzH20GJCciw0mdi+uXcr6OBm0i9ku0V2ODVw1IVZ5q/
	 AdQ9uI9+Q8qtg2QWWReeZoUkASreV+SdVr+GTBAi9jsYn2gBxkE90sXJb1Uk80BQbl
	 uA7eKYAw8Bj0wCkY7CeNA8o253/eAD0sDxhwTCNQ2p+Z4YilCQ2L5oND+lEyhscn2X
	 xfRqx8bpUH9tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA17E77188
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173638775358.23822.9820697329339853547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d9ccdedd3a2ecbbc685e06b615d80ea231c4aa21e246ec629acfc818f40df0
Date: Thu, 09 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736387753
