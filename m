Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB1B43B3E4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791240034; cv=none; b=uheWZnC2BgIba96IkhFYwFnq1qBo7U0KoUTP6LMha2a1WjHBdyJIh+dy85iPg6KLlg1Ssu0I1BUWyjt8EA5ac78csfiuVL3n0w5zD5cc454QZ3sjoOfTFRifB74DAn5kImBM706agwQlnZ04STlPO9j2LQ6KiSCx3uWelVIi7j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791240034; c=relaxed/simple;
	bh=7i+3MeY4BUWy0ZQ1EWuL9LE6QrYnyEKxZfs2nWI5kwg=;
	h=To:Subject:From:Message-Id:Date; b=OeSVw0oKevSLfz/g+Yg240eWsPZWWTA+5XeU1aAnXjJTGZkKajt5KLMAT/30sY086BxM3Q29P+SqnvJVMjP3yRhdGHFgx54ageOO7Pj46CDmK/0ze0Tgl70UUAS8DnnUbScgv5oKQqDqf5dOue1UlbtPK57flxzFhFJqEWdOs2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0yalNvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0yalNvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6063C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791240033;
	bh=7i+3MeY4BUWy0ZQ1EWuL9LE6QrYnyEKxZfs2nWI5kwg=;
	h=To:Subject:From:Date:From;
	b=B0yalNvXOADH2ggY1suK/RxBkG6NL/gtFUNgKzTXPzgqTR+iE/jJctzO+S0FjCzVO
	 M0WLUPzf4Zwk0klmyLIUaWtA71Icz+wHnd6xrf2rUhnXP/vzPIOhDkwKwkJpYuEx+s
	 9OHeJLl2TcQ5u53HCqK//cUChEIFL97wfj/9uN4iTm//LCU0qr4zILY+EVGKIHHWnA
	 QKTQVPXqil/WO7phJmKRyJy+AbbEPGFWVlYEfI7K4Ts4dT0yRulKkTsbHzROU/YjB6
	 H2/WLAzfw0WTbbFr83I0HWUoi4V81HYkzDKfYxtig4C12kb1CIEf4pL6JFwZhV19S4
	 v+h9S1JiDEgmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE56CCA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124003373.32750.2532667635702371081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e26ee780840b65401dbba5ef82434abdce8ad4bdffdb378fc4ca3a7c0deeebe
Date: Mon, 05 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791240033
