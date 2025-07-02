Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE82188735
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751427594; cv=none; b=lMMSmVGtYI0zhe1fk3m6ORTprQx7Dhd7GPI6VUrgKcg9ACGd1GBUmFuhIYGwoEtct+z8VxosxDwmpZRsdIen+RTQ0SxQc66XZnrBLiCIdrscGFlR9Pev9DMAs2bbXYnJmh3+nPfl3cR+Uns2nezvFTUBv/0yuQpaElyKA894aSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751427594; c=relaxed/simple;
	bh=/CnW2OhpwEyJcuDDG7cq7KN4L11o+umsmOObtZOpaF4=;
	h=To:Subject:From:Message-Id:Date; b=OHspNgytXteduJctiyaao1buIOGEyXwHOH+qT5a7fkGqzfIl0uJeXf/eD8BgFlQbJHePx5AmnoMIgIe17xmfU/FA/fgHll1uWji6qFRN1W/duYC9PHLmMGKh9cCdB7Fb4pya5bLl9AlWCioIBx08tPNO1a86OVGv1QsIa4qy0vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hy4ldU/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hy4ldU/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1242C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751427593;
	bh=/CnW2OhpwEyJcuDDG7cq7KN4L11o+umsmOObtZOpaF4=;
	h=To:Subject:From:Date:From;
	b=Hy4ldU/8i0zvdl20zj94AUCEbBbptyrxaPg1+E5c9OKYFozullXtbGWT7u7VkgkfL
	 HrgNHObUdEDLVtsnbeQkSz1iy6DSjJxmqmmav2aHDbwCb40GrDy3OQ+9nbknJAJnNB
	 +TX2JVqMzHV1yr+20uCyESZLuT2j2zpkbiySfUESpepnl8bRgvmgM939HmerIHptoZ
	 kmCHo4L2FMi0ymqLNeGFyoAyxjibBEtcjhsMV9YKzBd/Q3vzp9+lFFAB5/rheNe29S
	 GGlaOdvfh+JHK9J5yX8/d9W5ZppbYRg4hV0au/EWIzJMhBEq/O/+P7CH4LG9c2TWzk
	 t4QUaO1tIMuPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BBCC83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142759357.15776.7775390419885381898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb94292ac25af05ff22de9af519d6d25c0169440a1209bde193af59d293c189
Date: Wed, 02 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751427593
