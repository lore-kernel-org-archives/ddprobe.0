Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C548254AE7
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742900994; cv=none; b=ijwJg/Xj/elMBC0HFh03DM6OOpDIYk3ldOBOOgAJD4ea86ZyLfPVjtPgSEcYGjuGX3q4QZXNR4E77kQrbZJIONIFhIq7NM1tfvfI06F0q8uDi8dm4U51uKeb1yOD3ljWVxak8bKBM9jEbN7wC4NifiCqU1X2y2Ercn3uVrf18TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742900994; c=relaxed/simple;
	bh=xzCFGdYXI/UivfB/Ppa7DgmdAHPEdWdelVE7fekpCvU=;
	h=To:Subject:From:Message-Id:Date; b=e1X+dZvoG15VGsT6qbQvTqR9Ha1kdLBxyWYbgz7QeRWmraUEJprICWqNEiI5sF0GTP8aya/Pve/tOaquAHnUUtJ9dS0nlYkA6IdYXrlHPQmeASrIJhzN0cbhcI3pH7/0Zbm7T+EPKpXuPEeJl8Jv6aoRAu2J+5wkh+r5qGmlbWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdTsD6Lg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdTsD6Lg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB65C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742900993;
	bh=xzCFGdYXI/UivfB/Ppa7DgmdAHPEdWdelVE7fekpCvU=;
	h=To:Subject:From:Date:From;
	b=bdTsD6LgImmMHxkPo8W1wvxQZ8mW27+VxQH7oZpXvarngNZd9E4BGz+qIHeJxVnUs
	 RIGHxh6vYpiNnrtDgWnurmspuduxD0FzVCFL65YsRrD+a/ENE2wlN4brSNYfixfwlB
	 fmKYDMOPI0NX+04mNV5FxMCYJj8TT6KaP+NLw98Gn+sXvC+4DfIzN7UX/00IieE+18
	 H+c6UGodc5W4HM1tF/Dvesk7PZRzeGX5+NXCxLX2a+mdCa14+9vq8tu1GYCoNaA8nN
	 M99cthbatyv7FQa0nWrvW2bJtTUdAGkMWG5sndphLykYrJUuoOCNVQ0DKRzWvmWmgP
	 Xux4S+88JJwAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB83AC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290099369.23830.7661963260740943489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d56165aebd2a4efefc1984b744285f4860b52445c897936e44f50c84d9aa75
Date: Tue, 25 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742900993
