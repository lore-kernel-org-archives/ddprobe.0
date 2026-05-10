Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B181E5702
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778410234; cv=none; b=pXrfXLRdOJftVLDkzJaAR8Li2ingmOe523kIaoLuwnWnv7Ssl2wl35AvTcfQqfVARvI+gDbfuzC4hUeCCC9saX6RzZkyyIz2pnPdNqVHkNhGX3thpRi6MLtzAIv0N98tGLRngZVbx4E2tpr9ucGtZOo1wpoj/rbF+liOK3F9tyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778410234; c=relaxed/simple;
	bh=E5XSi7hynEGOH8cKNrbTngnKADtdSwruQ9dH07Op7f4=;
	h=To:Subject:From:Message-Id:Date; b=qMUROA7C6I7mbFU0q9m6xY8MU5w8I5OnVaLhC/dkB+aNpNAeF7ect6tVQWVDF8PPi2/X6S5Datlu0JFpem8fMOdBAIK0DEwBJpfAb42rSbLC201FL08SorfhT1dLimt61geMKWtueSF0xPj/formnEwRTAA8qv6sxl8KuZ7NyU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omd39qPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omd39qPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2558C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778410233;
	bh=E5XSi7hynEGOH8cKNrbTngnKADtdSwruQ9dH07Op7f4=;
	h=To:Subject:From:Date:From;
	b=omd39qPkbeU/TkxQoS7qmOu1KctIL3gTPvleUi4i3nDppYJ70eqOr6yLtIYHTFjXm
	 5JxyzMKayKHFOnzblcC6jrlf/SgXBk5BZiBSVOcB5QmJec/W0abk3wqdRwzU5aINIz
	 AIKIbHJIw9Bk8sj4zTZgkEk2MLUIfxrAD2LhhQYCBYU7GMGWm+vCzylXLib3NhxXvk
	 TiIUbKdEAj0YblCgAIDZDfkajSCmM2MvOpp2O+U22K3uAXPCz04LwkkHF9LqJnkaoc
	 4v6VZMy7sr7mW7iPUyjaUCAt9UuUM3Ntpdmb9d199H4eaVdsmlZiJpmwGTIkB9z3+H
	 KkKRyrcv2vycg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00BECD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841023368.4385.17731242917189552388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f21e719becbc97e9a68142a30c98b576c4649656dc78111a14843f52f3def175
Date: Sun, 10 May 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778410233
