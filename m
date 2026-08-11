Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABE336197D
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786430436; cv=none; b=VqJlsVmjNYGG1reap6l5mcEy7nyFBorElK4Qh6/I6uKHUBUV/9NtlrlNG0so5FxQKfzniiUPLLhq1MVJEmB/CvC11PBbKo1DJsY0TjyfnL6X2sexrYc7K9axwqxebROvRi/w47/YR6FT0477pBT5J4Fe4gkIeKztO3O/xnsPjDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786430436; c=relaxed/simple;
	bh=txdl0En5i6alARFCQRQhDRH9pvXlubBm3zld0wW2kMg=;
	h=To:Subject:From:Message-Id:Date; b=jZQEJX+QhEYa3nhjAZAdCRF0wzbtVb89YFif3mlfMGXy2WSqz5duC/tvVFvblajpkndyyFfI5Vw48slqOCGJ9TxEeW2smFscJtQmlklrghkyK7TMokSyc7oILb6oR6NKhwmdOv2t8Z7mfBYwzIiQaWSmKG/5iIlZDcnt0WccY64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEDMOeIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEDMOeIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0E5C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786430433;
	bh=txdl0En5i6alARFCQRQhDRH9pvXlubBm3zld0wW2kMg=;
	h=To:Subject:From:Date:From;
	b=nEDMOeILwNObrtIp/mIO1o4nUt2jS+y50uvskOuTB19nzSMg7YJsqYdfg4TCb//3l
	 WfZQwUbM1NCxVSgovVNqL3NHK6+ypNYOwYeqwJqbXccgR7AKYBiGZ5n5qjaxFJIlOG
	 7BOv1Usj3vbbY9YNoWUQzjZI6t8F6LwvM08ednrBR/BeenIH+IhSL7n5ZNW0J+XSPO
	 F2Bk/am7pJsF+iPs0dOXLSsFlEuiByL1kDuFll/S5wcTE4ex1vwO1vaSz/VvmM8aW3
	 QnlPZMm2mfbm6WzQN2Uf6YBBfDnd0BSbzxmKeNxAzge/iynls8rBQlYzu048crHvIy
	 Eua9svfxFV2EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9D0C5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643043368.13137.4560615323620511280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65685d6d45a86a937ba8147df45523ac6646099aa092bdc0cbff050c2f349cda
Date: Tue, 11 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786430433
