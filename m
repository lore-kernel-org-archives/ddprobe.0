Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2860213C8E8
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764412374; cv=none; b=CqvCeQr9JfVWJjN5Bz0m68lZudeef/qbDtHHU+Q0y+2HjVi5f92oqLUqD4S2A8qF+6X+7y7ilxMWzo1tvoar+iC+koLeCvIcTKhZopxVh72RipIFibRT1KeOTsBpEbb8niy1RIi4tJOUPdVPAXTWDshIZyiPdMLYDHW8h9Rq0g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764412374; c=relaxed/simple;
	bh=G8BicsqgnM3GMKvEfpIIk9WmPzKegJ6OYMah4kt3BJs=;
	h=To:Subject:From:Message-Id:Date; b=cpZjd4bTasO4WC5Q5TgPtf0F5+gNdfmQTFmX+vMcz+F6tec/FBlLhyKqdZRuQgaXXC4ITcTM4iXBGHHcOcJm6FvRq1xe+zYus7EXc/8LtUPwZrnBDRExO6cUxfc10C6hUqV//Bdoe096EikIJAhtanRoXcw1SD2abadoMBa51Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/8GL7+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/8GL7+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD20FC116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764412373;
	bh=G8BicsqgnM3GMKvEfpIIk9WmPzKegJ6OYMah4kt3BJs=;
	h=To:Subject:From:Date:From;
	b=Z/8GL7+iHTsvJs0nFR4aG7CHzQ1Zlcfs3FnsCu+AJpuc1QYs2hbUIMysZNmshoHDI
	 54ASrz1eAnyeR6PgzoGAgPe9oQ/bRzRC4fTRkRXSNF4es02yBGTIGwGpQd47e9a9w9
	 bSt6HIku6pnfX239KuOgefe4uAi5mX7jFxLLfrATR3EmrMvBJux5euptANduy083rE
	 XwMg7exQ5t4UR2SAg/HsBzSWuOKlmwUErCCQiWwrT6IoOURoHri8GIq3pexJikWsKG
	 OrFwJjEq/OWLaH5QrtBtKQ3EcenglDhQNpsxX5GuZSZZsVtWCY5t9+vaot4owJVguB
	 Eq2wJgwyBm63A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB69CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441237359.1824.13260581377304212143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ac833f86efeecf234d790a4451857b36fadabd9ab5f8e468114db50253e913
Date: Sat, 29 Nov 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764412373
