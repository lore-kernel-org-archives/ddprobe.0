Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA32142A98
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711612696; cv=none; b=umd213kFRdxhdKKxhhFpu7SKn0H9GxTmG3MQbYAeCCvcjWFCKZtDw1N420TQwLWwKPKzyyd2zrwu8Bz+5M0OJImka0KmDrcbrxEJjKF8F99tiMknUnNj4BClZPU4l9kVeQlg5M8Po9n7Q3QcExANQD92xB0CsCZ93kBCZlq8BD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711612696; c=relaxed/simple;
	bh=Bdknr0maZU0gcIK/dZcBSIGXjb7W0aqHDQ8/6lK8ANk=;
	h=To:Subject:From:Message-Id:Date; b=QinNCcwwBs+0p7BfzmyXAgRq+nfQcoqn2fwIu0oFiavqUWCvxezoVDdai938lt2PqLI3UVR9rQKTxltTy7WYfSBulOaAblrrBDxELBQljTeSvB8p0hRfTuQivYtPJakYB8vz3kuKgZVgxGZs29FL3z7wNN1DLKtHhS8kZIjPIb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dduZEhhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dduZEhhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E40FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711612696;
	bh=Bdknr0maZU0gcIK/dZcBSIGXjb7W0aqHDQ8/6lK8ANk=;
	h=To:Subject:From:Date:From;
	b=dduZEhhUbtfFXZ7qOMb3QBWrld/IqPJxklkQvSzrimbg6umyjvy53lpHVIXxI+3Nl
	 efPq+TCHAqeeDQbnRDj794KQKfYHFZ9fqU3yZ3XmYMgaCyfew97wTNbV1BCqWVUppn
	 QJusH7pyVCuGRGiiRguwpKWHF7+Y5kMYq8Krgp9relWLFXJlM9qvSD9w7iTEJj62G2
	 WpfQ2xHS222qCTImr5YKRb+SfHeBY7eFXsKzT1cLzVOWvwUmibdoYBOHcKwLy+CwR9
	 2qagwKC46Y5nI3OL0lHkTzMS5RhXOQLRfgZTqKLl8WZb2bo2QbZE8OvbdUq2IkOdRE
	 2JRHI7W6su9qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B3DC54E67
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171161269641.30155.14826057286249766078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c57dbf125e5e17018311f95ac6b4d2d140b0128e1cb5266aceb151af9c5a2f0
Date: Thu, 28 Mar 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711612696
