Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AFA3148B4
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771406694; cv=none; b=e3RqpvsuvBCoFp2Gc3ooXKschhqM8XXgc/6N8el97HTy8YmKROo3h1isdfJoSBbqY+503cBfGQ0P6X4L7uZEj/ETMgJVZLpbSh+wQA1KwdZJVRicLFW66xJ0ZmPVtVBle/jze4wahRzHO8DcWQ85JaYOOuzlm2+yu/L4qfNvxL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771406694; c=relaxed/simple;
	bh=dnaeWeZw47NPo8ufhSX1BY9HRYYMaAYv57Bt4QBaMc0=;
	h=To:Subject:From:Message-Id:Date; b=jhZyxJ+HVAF2a6OvEn2yIF4+/M9c66ATfdCiWPjUOWTQVzGOKZyx7i+lwjJrB5fSgVpDxoU7Qi26namBcyjctGYns0D5e/Mm3JL+CIYTTxwNeak8OCgBrx9AuWCzwQQ2oikLnZ1xKhEkteTjhnzA7oQpCwBXJxoKySsQN0X8Qjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqOfDl0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqOfDl0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD443C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771406693;
	bh=dnaeWeZw47NPo8ufhSX1BY9HRYYMaAYv57Bt4QBaMc0=;
	h=To:Subject:From:Date:From;
	b=SqOfDl0qViUECjecP5q32P1G6yQF4XejjGT7y86529XwrlvDcNArWhAwr1QR5TPBV
	 o1w9kh+j9JWZerSp1vaMawS6fj21Cz42toTZfxnHGvcUjzlmyE5alrZjn6J6pCzlTO
	 8qUeoZKdtnKRvQt4kkO+FrrUrVwZ77anHoxRWaU0B1Eu/CU/ae28+i6VONzo+l0fH9
	 RXr0cpAYVsUiNbgija+iqwjhEBwva9+h7Mt0PXvi1/uEG1vRRXRp1Da7Attj9g4IK1
	 Lz/dg3/+JHbfuYWf25FViBiT6gzR5c5MnfJuWVUcWjzolRpADbuwzXi+JDFO9Eexbk
	 QgTGYikBqA31A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2A2E9A03E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140669361.22920.16403069311318104388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df33d393614304f21fc0069ad0f044fcf996097fec2f03c0b76482e3c4ea6d0d
Date: Wed, 18 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771406693
