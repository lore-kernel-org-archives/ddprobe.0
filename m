Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F4D482D8
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728017754; cv=none; b=QrOzibcgzhl7h/GMk0/T4oNZ+fLylFGAXP5vEWC5H3+kK4TahX5yof54cMa5cBWwKY1SGfKGJfh8lsJYEzv9TydBTn5Yn/frKbrYKls0Oci9Tpx6ofKWIjQQGaUpdijtw21zXqWk4759zxxK14mO2xnPrRbxHZFxKkdN5aILbGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728017754; c=relaxed/simple;
	bh=8CdWMNL/2u1wZZC8YOsreFEB2lH/dVonKnmrnh/eqh0=;
	h=To:Subject:From:Message-Id:Date; b=Wpx9TnpXwdT+vvSYZrvbnGhDVp9Zag0o/ezCN6fDzLsFuyv0IrH1ZLvoAHq/lRgIbfbWjKCIVHFM7DsfATpepkfxY5xXLny3YDTjNY/zu33EsDRS3CNHlMbqdpOUlTvMKoTVAOzGdVzUxgmp1OPQbjKKVms8E2rDQrMM+d/Ehdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXY3sPWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXY3sPWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9F4C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728017753;
	bh=8CdWMNL/2u1wZZC8YOsreFEB2lH/dVonKnmrnh/eqh0=;
	h=To:Subject:From:Date:From;
	b=UXY3sPWkEtnz6LfkhNQ/1DO76ZIgHAKO7veqfYh9vW5U0Il6nexnQ9iaLXVEYpU/h
	 uwnIv0LUcKN6esi7j3LN9fCqVVQaQVfHTzPQLrvAxx89W1O0vAD2WOVlxROp/ZKty6
	 okGQl7JB+6PMW6hscJiUocQn6m79lP/9tUJfHawngENbYl14YL3lFywtaP3TajkkLk
	 F+IxtmOFbSIdIRnXz5sxDLVP5zISXKmsrRbX8ajo7pTOiBUyDZwP9p9LA9OvthdFE1
	 +nA/ffhYIz/z/iAobpUjdeMK+t6aqAHRUVRMDiX3UQp/wtGFBb6oO4ASugFLeD1sT8
	 ZvREbAddTo8gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D55CFA749
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172801775368.28604.1245654208664474780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f7c770ee24e2d69c9ad655df65a541a7f4f144eb96b59b4f3abdf59bcc04eb
Date: Fri, 04 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728017753
