Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1477060B9D
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709634497; cv=none; b=LwLI/PaD6EWAlVER25+XA3kNheAEqUjrc45aHmpXRf/34PqK+o0iAS7VXEuwj5a69n9u/XKZCtMfRmKOQeje/vFbnEHd0Y5BgAuwqIapH8xZ140VsZI5q6SqfqrCFkMV/J+mtzqXmrhK6tHwiZTycBEMZu6p8RTgs+x5k2IrP+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709634497; c=relaxed/simple;
	bh=UQDxPRZKQmaW8pN0czfbowxsiQjwKI9HVndlASiG9CY=;
	h=To:Subject:From:Message-Id:Date; b=Db4wkd0FQdxPJlpjqz+FppRbED5H0zTnCd6NTa4Xn1B4SVqxMHqEGP+MOu7/EGBG/6SCSA+cjw7bleyMkaGAz2c6xqs6YiKoUH7SVey7aMCqLT2gp7ZSFnNRGPEMJRHxvuatb9nnr9k1xOd2drlsn1vJVMNNwXxbNDgsgO4DTRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6GArwSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6GArwSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88A02C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709634496;
	bh=UQDxPRZKQmaW8pN0czfbowxsiQjwKI9HVndlASiG9CY=;
	h=To:Subject:From:Date:From;
	b=R6GArwSfq6efO9jwR3Z4RLj7h3kwQHUb3dfYlvTEVW6DYTK/dfGYwIXdxXXYKQjBL
	 ja+CMwSrodxYj11g9IkRBWfFLB/OqcgL6VSZupq4L+qEWfZt0lpgtsJtduUF9bQEWK
	 jZlUhsv2EFNBNFl0r7zXcuXsFt9M9ZHq3Cq4oqP3nipeOJTgdRgtoOm9M7e9nUwzDM
	 WfugBeYsiWKFZNnsT0TGDhBIKbNyK0vgSCDrNxRO6xlIZ3dTD8zVNZq4GLc1zDIbRg
	 pY3LxGToBBxM5kxbkHCq/2r7hyNAyjiejT6tijXJ72iGpQXZ5OCtWLPsS3jXjSnP4H
	 ong8T5ML4jN4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E07DC54798
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170963449641.27501.10621709202832468054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88f1d77bc83c4bfcb630a36c1cfc04ac3bcc8a45b05a2967aa2f6dac645d4547
Date: Tue, 05 Mar 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709634496
