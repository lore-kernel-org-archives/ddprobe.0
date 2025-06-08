Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3467813C3CD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749375594; cv=none; b=Y4UFw5nKJmFlYpNIk2orl7+YP7qHEm7AsmyShdPTLN4mPhNYzEFlyQGTfuBoYNcj3zMvBx1P04kLWqW2d8jgG0BzTliIhOviSEVCUuwaLnq/Xqxv0IK+ARKzPDKQ6OkTaa43sUQAaNLh6KfkNHZLyiXqJ4O7JnW52Nv9w0HiJDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749375594; c=relaxed/simple;
	bh=6iSCTrjQd9ReJUpL7NbeiEWnHZaAWOiRs0oUgZet/R0=;
	h=To:Subject:From:Message-Id:Date; b=FsIy/9spt97SfVxBeoK04YMKLaZAkEuPNM71uarcjOXSfnLiAwE074XP0ZylMBlq9vXmg3LlyePuyualY1aX1y3lJQsKUq+Mvk8PngOYavH02CX5AiBeeik4SW8LxVtjqW7GEvLwzItx4Rs/TX3kinYR0LmZFf5MCLfBS3yhjOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXm5IJi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXm5IJi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90A5C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749375593;
	bh=6iSCTrjQd9ReJUpL7NbeiEWnHZaAWOiRs0oUgZet/R0=;
	h=To:Subject:From:Date:From;
	b=uXm5IJi+AVNho3lyH0OwAvNd5owsCvkzJOfRXoQVXqx5CWXt/nKJsE/gWxi7qMC3i
	 nwS5r6iAqjAHfAdCSHQXmMkoFDg8XkG8k36ZrZwnw0J27Q9XE8okv6atHV9r6u0VCL
	 rAi10gQWuVdRSHBnHXF5oc26Nww82Xsiii32VzEv4svj6sl+WjNbGsO/o6ktl/VaND
	 DZBFRHZ44lTozVZNyylR2oH1jeoqMV8r5UyOxvofhCn99WreU/82r+wb3Woe3/jZ/B
	 wJfgWQPRzT17r6lXAYaj8cFZGrRCd67Mp7gzqF+R6+xiZ2a7BLrsGTPV7fEhwP5twf
	 uzDxkfess9v3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93444C61CE7
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937559358.17329.7807768181235400600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a910662baab5786a58675b9c788c1cbf56646eb7bf6c43b23709c4c01e6640ac
Date: Sun, 08 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749375593
