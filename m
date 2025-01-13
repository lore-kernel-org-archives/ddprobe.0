Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88688231C85
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736758554; cv=none; b=usHheMcyvblYLhf9jm2kJNBD2jEr0hB8MR949iZIA+/APoOgB+DbVawfFDyYofthTtDzIU3VK5K6Frum5DkIhPEiA+4wtHJC6Q22Xlgv2hM41WT8kddXI/5CXa+0EIttst7j01psU/vn7MLV1PKtTJ+XX/WXGVaj2UySiTqpIAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736758554; c=relaxed/simple;
	bh=sKqyQT9Qu6+70FlREm2k6i9UPYevaRqU8wdfXEhfFbU=;
	h=To:Subject:From:Message-Id:Date; b=BDlhRFHY9kz5vRnuBsy2x6R5ze90O9LW7l6k7RnXo2bkPmnehpIqbcJtFgX9+WNOfGAr1Hs0GhYqusjTZzoUEkyTnJ6OLSyO/yaQu1o9pUtakoazcWxNMGg0Fnq+ztnvN0JgbmPqIWCJVNve1Fy2QlpcapbaU8SiwIUcPHc1RI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jo0RwJuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jo0RwJuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD370C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736758553;
	bh=sKqyQT9Qu6+70FlREm2k6i9UPYevaRqU8wdfXEhfFbU=;
	h=To:Subject:From:Date:From;
	b=Jo0RwJuTJjS3ZqZZ1ammtPelvIyxMKAFWnff0Ki9ApG+Wyw0Eptfu3VNTDFrY5G0y
	 qtMkbcRwgh9c892d/rlt8MoFHJskuU8tdQsKaAQaBQKxRJSja76Dbbpz7yLY0LhC14
	 Dsjl0FUP3Y41wydYtQdyiSw9phS4477JPI5tkChbs9R3wJvEYf8qbAMkBIqZ9y02YH
	 ziBeL7Vx+UzmCxXWkgCX7xhSBWcQ+1jQCQ5wSffXiwjVAo8Of82QkQGD4mtS5on0zw
	 TQa4SG8hYKlZpnNP2ofXK8eYtuBw9Q9wUFKJaFLXCZNNSgoH46Ztkwfk/aMKBt6eer
	 Oea+mPyRB+e4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6ADE7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173675855374.29378.3227300174784504127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b184bcad8e561c60e889c3eb8e7884aff91b63cbc8b5e5535ba3884be7e7cb5
Date: Mon, 13 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736758553
