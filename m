Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DB334FF79
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787407834; cv=none; b=FAswz/BBUyhQlPmG0c2lY6lgoAaEYkC+c8fUZDfnMZTv4+dg2NJSWNtorkSC8r1JttSXxNiUJvPVBh0TUDj8ctwcyebxHqt28t8RqX2TcLyjn5pvxS1RaFGp9hBuN8QWNPglGWt9stv04J66/CNQ3MG5iJKRftxPXbElGFz25x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787407834; c=relaxed/simple;
	bh=pnCS8e5PzjU9wc5QZoQZSZXfRzc/afH1I/gU42Ge26c=;
	h=To:Subject:From:Message-Id:Date; b=rJnLIrTY550iIVnpVEgGdfpM82NkzNPs9C8l9agM89eHFeMchKzlWK8h2f8IuGJ4iwTtQQIIB9lNX0zbzr4SpwOL89eQ/jH5BvGfISwurWToK0lYI0GmLZ0Sa0xR29ncY24a949eIiM8Ycvi+DA+m/Yn4Px6aZ74oxgzH9/0shc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKYTOSMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKYTOSMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF33C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787407833;
	bh=pnCS8e5PzjU9wc5QZoQZSZXfRzc/afH1I/gU42Ge26c=;
	h=To:Subject:From:Date:From;
	b=MKYTOSMcbe7aAZVKrpqKF/C9EumwmgOH1RmzOURKZ9NruBaBnmGnv42Y5MNNXRTfx
	 B25CcP64oCs+fCBAdARoJXYJcphVl3WL/1cmd+lVp7EOXCBjq+dxR075o1mCQ2TvMv
	 AoLjV2NKPIQEAAHDEAn7JwhzoZlSmMA+KFV86KhmKJ9o8kiUXCtbpcUAMy6BUyxC6T
	 mc0nRaK8Eb4AMgI720JFFla8leSR5TWHHiVJhxsvYnqcplxwmHScII3hUip0Hmyp/B
	 khZ9nza6HJBwSXQ96EEehOU/7pOlSaPLlr6QheWVSLT6RMvvy4mLj2xuY5ut0hqkEn
	 seBJJC2uicflw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE62C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740783369.2368.10219009592730676518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca77804d9a3e0487cdfc77b58981d0fb03c4c61e2accf9fc97a4df4088a8c28
Date: Sat, 22 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787407833
