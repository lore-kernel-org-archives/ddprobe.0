Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BFF31D372
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770984294; cv=none; b=CbVko48wGVGK8KTHHTN5rGjgT3ZMeb++vplKkUv2vtGG9iHBV9HpC6hFt6Opf6j3TKj/RPoVV2wZCxK7ZOvuOC4qNjKndICZ2VdM3Z8KuByvi3leWells9x2wmcgGoPcYEGvAYA4yziDyeyAbgzF2s3negLexSMwJNqUmUiOe34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770984294; c=relaxed/simple;
	bh=DijGMkRaRHAlVsfqSetfezb1RVq7zgtxyPyZa8sU6qc=;
	h=To:Subject:From:Message-Id:Date; b=RzCFUvFW876HqQBlLZnn0XKF7CPVnT0yB6tvqgX9RJz3U9/PbjwhJDGgEOM1GjCK9UkGLwD+jwloB69jkeGuAWa4/M5i3f1eEOqLECocWwfzVv2ZtB3rBdaGNx6JmeIjg2UhiKTlunc7KFbWx8X8oBBtTqjXXkUGxIuK6nWhWfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEZ8PvVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEZ8PvVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4FCC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770984293;
	bh=DijGMkRaRHAlVsfqSetfezb1RVq7zgtxyPyZa8sU6qc=;
	h=To:Subject:From:Date:From;
	b=DEZ8PvVUagYtP7tGfDxyJFyqkETDhUEgRQk5V/nyOdWUeDDQwnjC8MM8hdccrsgiJ
	 UflutBVbKrb6tXVB68iw9iuovGc2MgtENNAfJY7KtZqg3gpFAlKP4pCwU6x3SlwUCt
	 SpHdEmO5QXrfqZQyHBDGGDDoBPIgqx4R86vAwx6sdeTJWBCiUrCWZaWbokr9CFIxX2
	 zoVPL+W5xk4mWjDEMc4fw9w/Gn/XCc0efaUbLGio5/g69VoZAIJ5Vk23Gpzx2dHS/Y
	 Vrzb1Szmj1bl0QgisIBE/R1YLU+PM/pmXzM9DFPPV/AcblntXKmHSJ7z71m0bkMddH
	 utNGRXM2cUbpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8D2EDF155
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098429362.12266.12622377067384114006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a691b17c7b2030216a02498ce66e84d04f0ea2b29c2f25ce23ea508b193f7e5b
Date: Fri, 13 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770984293
