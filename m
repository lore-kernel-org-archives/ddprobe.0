Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FFE1514F8
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776208654; cv=none; b=n1btn7YLgon2HabOyHNDisRs/TZGGIA8Qnra11OChwopg3tMP+a4qbZy8n0YF7CWZiRuQc56rDiqKepITFYLc/WAGxTBTiadXMoSFq9x4kH5yZeCG/wTPqMxsUjkoIWNZ8eBiZjnsrYkIRAvHfhS4122u46jNi4eXHcgekg+WDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776208654; c=relaxed/simple;
	bh=IowG34n55susW8OODqOppyfZBmyBiJi0IODEtKUcCAo=;
	h=To:Subject:From:Message-Id:Date; b=pok7tBlfRuevzji7tWED5uMuGVymN2yHKpoHm8AuvT9+GwVCuK/2wXcyX6AE8WGeEpzCizxruIXMwkSAa++j/JI3LbouNcDhZGx0G0g8TS2NeoHphg76XvAFrxDvEaVjlEqzlzRWwrn/vQpOL7cX9AlnaIYxp3YTDV7s64JupyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptT/5t3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptT/5t3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE46FC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776208653;
	bh=IowG34n55susW8OODqOppyfZBmyBiJi0IODEtKUcCAo=;
	h=To:Subject:From:Date:From;
	b=ptT/5t3OtYNS9IRQ9W+cGd/j4BvT37et6A85c7/epVm+piGx5lHtNXe7VhI22zqqt
	 6vpDWPzX0XOHhzeTX2IwMrBMKiim8UqXKkIEyTDmysXL3T9DmQsCzfNe0ZiJ6ugAZ6
	 vArdkQQaWeSUBAgdyJOFsPbDclu3n6+/ICdVmokpI6lhOW/QNJVaxotrhSsl7Olek6
	 v3Fd37sy8+wI2jC7YioopmbikEaacw6ap0J4sGEsmuuHWurn5uHGUIVVf+dgEQ2DQD
	 wHeaxbnhtsVro3GSVT5JVkesfGfjLMd0DJ5f+cUejtEDp2cFF1InxRMPfMy08ZZ4DN
	 zJ5UmT8KsRMcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC7AF9D0F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620865368.28266.11954428492566884540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712c4785f42ef4eae319d0d80775a934591bb87dc485f904eeb5056d199baf2e
Date: Tue, 14 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776208653
