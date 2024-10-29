Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B071D8E10
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730220954; cv=none; b=ZCP9jcp8XDu7gvAjRnOhWXUH9H8YMzBbMPybkSBNR/QnYDwvdiK/2oJiOSbousLSUdnhos5jkwIfglJ/aasGMEh/FR9CQSPb2C23ziI5vAilcwn4Zkh8UQ79ImbDK+gIT6/lLTzqcsJgGCf5ylcnM+VEROjLr8BqDfjyGEJVhJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730220954; c=relaxed/simple;
	bh=/BR7Ejk0BY9m8NqhllfR51yQ3WCyGIe87Gj9tbHra0A=;
	h=To:Subject:From:Message-Id:Date; b=raOowJX55K+jrBzcbgeIUG2rsZMucp3Y6PO/TFeIWo8v4oG9WAsbbjRy+n0NNFRBON2s7DPFfmXIy4wZEDPS9ViFIhQVIGnM1/tF6n8qUuD8nql0QnmsQvapOpiRMkZWryEPUUOD/DSYTRr+ja6SOqXv8xYV7TGBYVRbPPudkhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpXyAtN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpXyAtN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF211C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730220953;
	bh=/BR7Ejk0BY9m8NqhllfR51yQ3WCyGIe87Gj9tbHra0A=;
	h=To:Subject:From:Date:From;
	b=GpXyAtN/acbuTin8mwOXsJHTbt/LkcPWwmWYegGbG56wbFlOd2FDa4G+4hKB+kOK6
	 e25jsdI59ItE5wXdKDTpXmXEl3xy633YXMIjvTMHcONR1n/AvALUmSCFLKDUPoj2/6
	 lNzjmJwJlz5U82sMyr1IW6HPE9g7YnmUpo73SXzNxfI5n+qYEzVw26FixD14wJstcC
	 JAnkmHh5UNsCG3mE8Jw7srSQp2Pm/2HQ1xPpAX73WWopZjOLfMyqdWsxKCsf2d/67k
	 7dY8ULt/lH1Qk/BfL94wCY2qE1qRYNdhBm3pz6dKMjIfgMkr7jYp6BqZA6WPQmiirL
	 ItOShsOqIbMbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FD6D3A670
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173022095361.2788.13698293756153887067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded8105213576762ede13815b0111d1662ae383fec1473dc4c01e8e6287c3398
Date: Tue, 29 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730220953
