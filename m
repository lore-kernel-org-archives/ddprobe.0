Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300E316D9C2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750743594; cv=none; b=eivCTwpOc0u6ArfLKpRUi4mGi2YhKl9hOjSo/p4iotxatsgHcxfdGGVpWabvEAbG9UvqupmP/JnHbqko1AQyrlg6ZonsUTfLTJJXgIHbCZlgEbBD6OqNWfOePnoMJOLnlfsZyDm9vyPVC3j2OzswdIcYM8d8KaQzCllPy120qA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750743594; c=relaxed/simple;
	bh=GRX6LYpQXqobv+Vkq3ClckOT2EHM+clHswa2mpTRFy4=;
	h=To:Subject:From:Message-Id:Date; b=OO5X3XNpF77Dhc7xBP3BnFAvUiMSdsw/9MYPstsAS9n2BXNW2lxpCRB9z80mtKhs6j3GKyxcY2KDB1zmfWnbZ+822q0yAgGsp1qMNDZJd93GYtpaNLOR+04YU0QXHZbG6HCxBB3vFr8iKN1jNGKyArG8e4NMO+rbQ6cLTcBsQe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VL85QN6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VL85QN6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7981C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750743593;
	bh=GRX6LYpQXqobv+Vkq3ClckOT2EHM+clHswa2mpTRFy4=;
	h=To:Subject:From:Date:From;
	b=VL85QN6EEFYd2cScnMJ3rVLN8BKfCaELtos4fZG+dfEhTILIf3iahTgmkjw4qjk04
	 ykEb8Ie2t+N7NlDZ3TQ6NP/mQNr6gt4BntCRfL3jadlTLfh5kezNSD1qq6NcRjM6Kp
	 Tiar+T1JeCjgHk2vjpOfZWeLYw1JCI1mvlPOCyYqqIe8Y5NqRl/AX4EhP21vuEWVMz
	 BexeOnK2HgdcEoLHnfJmD1ogo+4dkrAzh+LF0pCKOL5bfqyBLrptegMMiszxz93rCp
	 ZLjeqjhcKP8P8vvYQwAkmDpL/R4zMCjq8QrUd60wJk/5RCToW+/dFJ6eqNeM4e9Lxr
	 zoiTaz4ckrVsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B36C71157
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074359357.657.10632167379921544688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0785160085b30fd300ef670de034037d52695731247cb94f49a96f529e12b322
Date: Tue, 24 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750743593
