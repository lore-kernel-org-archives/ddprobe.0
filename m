Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2891519E819
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780715674; cv=none; b=aZHslG5gJz6EQj1yneLAGLbA0qObhBDV/FSy+AFeiV6syhhXiWxVpeYkOjpmaaRBwaACmP2mF+1ZMuNNR9Yyz1hlHcwxNqwPr9iwGgdqg/hUt6/rkPat01BIdlSNkFcIlbJHqwaN2K5hjF7GTVtJsj8v4csJmUP7SQENjL2Ynq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780715674; c=relaxed/simple;
	bh=kNzEoyLDabMibSAAKcVx4OEiN+H0Z6SVX5FA1UG9egc=;
	h=To:Subject:From:Message-Id:Date; b=YL8q4K9Mp55JDxllZ3GaYtNsWccj8A5HLsoeobZElWvu1MW6VYIejdg6GOTkpR8e9h5gSeFkoz+WSkoXHRedRfn/G7Cy4xrxrJrAA/o7KHfZjtENZrrU/7jHUrgdQUErcIQAdPdxfzppsOewpfOfRwUyZKyDq/sHMkae3KgrXq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AW1lBx3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AW1lBx3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AC9C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780715673;
	bh=kNzEoyLDabMibSAAKcVx4OEiN+H0Z6SVX5FA1UG9egc=;
	h=To:Subject:From:Date:From;
	b=AW1lBx3MXkJtSm4tgzoaFj6pm2htbVYJzHOXmdJyFcHQ4a/FYy/1qaPFm0/7yD5ls
	 4Plerx2cqEpCL+dLC0Cj9pXvPlAfQCmtfOPgULo8S27eNK5LGRFK+KK3NsJdmKbDLO
	 IwQjjMrL6hJ4Qz/D8TbDbev+j8E9Py2YiGIRjAi4gEFL0NlKU/E+UUq+IFgKZNJjPV
	 DUQvXjdKxmnGN/e+8NGWzzzTfdJmum0wgVprX5CPvq4Dgl7Bwl+PH6Bbaa/sdNIubF
	 3YKOevMcj96u3IsEfTxasG1YWA/n9zVbU+hw+Ze8R4Ep9glzwJ/dMq5emM78u7bTFE
	 WlIz8JJguoP3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09B0CD8C89
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071567368.15592.7245987747840610207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0716a7a642082e8c53dbfe8161458c0af69bab6bea4cc8ff81f51db6f6fdf74a
Date: Sat, 06 Jun 2026 03:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780715673
