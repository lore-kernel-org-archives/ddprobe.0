Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433B384DF1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723874154; cv=none; b=Q8BXTuxbX7gBAqgZNzFahBp+zrj3atYpiUFci4LC3I83f2I1TN7sigwoAnbXpNbUmFW/HrsWy+fCvIghC2zIy53eq3GrOJboflK/b2e1bSti2rhB8ga/k+69pujO9P+dc/mjBQRNxcx0zfzNFku/x3bgTkPDU44fJhmUN5fF3LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723874154; c=relaxed/simple;
	bh=JwE6Af8zCIANHVROv2AoRQeWf2EbPm3SjYAFrmysBX8=;
	h=To:Subject:From:Message-Id:Date; b=qnF0/hujNXkEacYhhMmS3cFyIk5WwcJTObpYhy1iMk0ZVJYzzSfCNgynRvLXJRIlxfAR+w7E/1TBF7iLBy9eZojoWB31mp+VREAiMTuyhoblWIB6Yb8LrlHJVUyZFONJQOXGoyif+qhJLnCjqn7+AVVLteu2uywoUxxItyFjrp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2jxvZu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2jxvZu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A35C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723874153;
	bh=JwE6Af8zCIANHVROv2AoRQeWf2EbPm3SjYAFrmysBX8=;
	h=To:Subject:From:Date:From;
	b=a2jxvZu+EqH7SQJAmb50dvSbG70JphkCwXSA7zt4jTpS41yILS+RtQJ3COBYLiXk5
	 CH8l0K1ok9anXTgGeeaI4EJa77olDlPqTV84dI3lCfoOL7nYQ4MCGWjzqLuV3fbXCI
	 muGT264DjhY663tlFX/Gelvq/7KPNMSxCcqLlYbzZx7L1XadBr20hyKB9NtmDqG53d
	 k9PILg5V8eeMN8D2QNsQBaDetCu8UdqzE4Wqqu1EeAD2U+qHDEJME8VWRGUawOlZgb
	 bI6xWr25GJbfNpFGFoxDbl3a4iU3zEf6iuMN7KAjlVUetpraUIbjmpXmvGsi82L6UK
	 aDu+n5ui+UwLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A55C52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172387415360.16385.5259644735189967553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f89ea39dfb87b0dc0ee1a352f9d96fe3282a6386f0b5e7fb65d1cc57b2c7c7
Date: Sat, 17 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723874153
