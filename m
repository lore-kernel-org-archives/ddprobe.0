Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C2C63A1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705465697; cv=none; b=BHlNypwHVlxHoZKc4ApGCFlTSsWKz5toiYF0YPvnwAfb1VSFJfRIORykR/bPuNEU4fzIBgnPIHKA7ssJmoJt2fcbeIDt8m+lgMlVgXWCoUdnO2vm88AKRB3+HKihupjL+w1kK7KkP/QPW9jr9u5Hnr3qeT+ys9o5qRcz2Q/5v34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705465697; c=relaxed/simple;
	bh=Es0BT9qIzoMjI/4wgA7pZ4y5wZRKYHwtkbFYluGfj18=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=CsYZkMwaerrMGfo2NGIJg5XtG5ZT3pMqwe+5hsF/zPR/3QEVn4I/nmpIuVpsW0vMRUJxrKOBrDGNoLDjw6ERm1Yb9a7oJl3U4arFs3v7fugU6NbS8eMaYxdF8TuR5ll+vA3sBlb40e1ZNBKHFeXywiM7+7+5tN0SPj32LDqpQ1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Er+SPTzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Er+SPTzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82760C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705465696;
	bh=Es0BT9qIzoMjI/4wgA7pZ4y5wZRKYHwtkbFYluGfj18=;
	h=To:Subject:From:Date:From;
	b=Er+SPTzlKh/2KF7ySu8C3Jj7jsk+0lckcUiQDyUuRsW91/rQWfR6kEiBNKgDdK8HL
	 NSARP5D6LYLXhNcHGwClNDaWL40Z1elfLnw0gHrtKNSokzTmHTgkzOhrV30kn+ast6
	 S2+7RERMfytNwH7M2Q37GKlPjSNhfSI6XtoqdyBpkwLfHjjJMuqOa2HyMwPbe/LtCp
	 BtoSZBvI4lAgaQ/hUTs6XkkSbUxMSPAv3slH66O/vTBk+h6uAnX6VBMLHY3QMhXQsw
	 A8phYW9t7CsiSQslvUrOEfhj09snePMQp8loOFGIZQLv48AqLt3YWrLCHVeWGffpoo
	 r/ILv/DI7R17w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AB0C47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170546569640.4614.8325338227350182965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e5e55d5a972d8462e6ec36f3e0cc828d8566f47cf690b73ee7e2ce6f87be31
Date: Wed, 17 Jan 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705465696
