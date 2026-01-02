Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F572257827
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767396234; cv=none; b=n5ub/BwNTwte3Rt4tm4wX5GtNUnA31s4msdH07wnsmt47LmI97+VwLHI0E5qSdv3Auklzy5loBeLMUaqYMKY6o4iZhJeSkiOHXGBAUijnwO17fAahoi5qhe2vcJJxsWXrA+axbqNDliMTz7siEWo2pbC3oD9fymtaUwzSQa3z5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767396234; c=relaxed/simple;
	bh=qD4a4LxYQ7OsdA6TboqQ7en24H0IyQxqNYIj5ychwsA=;
	h=To:Subject:From:Message-Id:Date; b=H3HGvbpz4sjpdFgvdduM8mWP2R6AQN6QW1K2KvTBZ+chCzvA6IJFIUuN/FGKjJ08fTZAg+bkFAeQ488GPCgNqNUIxwH2qLuWiCm/YxEJ5QCDMVettadqNGW1LAolRBMvWHrRutKzHOklKmuWOdz3IGy1lbEvgmxTaLWrx/dpl94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye+MzIEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye+MzIEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A043FC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767396233;
	bh=qD4a4LxYQ7OsdA6TboqQ7en24H0IyQxqNYIj5ychwsA=;
	h=To:Subject:From:Date:From;
	b=Ye+MzIEaQ2ipHRRoZME1RZMPR0E2Y5WXAoFPxJjS8tv9EGc3xHtOtXkAgY+ServVQ
	 AIbauoGp5F52aZ+mrl+nfkbmzHY3ag2NZrV5USDZScgIk7YC6a1CyPzTAZ7KnZNFPA
	 T1ONVUFhfJz06dRAwIdd7EptiOZjVFyVHxe1h6seyXslqGsR6H7asVrxt3BB4l1wkc
	 FG5C6INBT7duUmlcoB4Ypx025dvEnfKYQuqgSBYU7LkA64OiDKfmLQbNUlHpJZBGAq
	 0TNfa84U+lwvFawTmnSxVVDTqSNmiLSGRZpj93Cr0XDJwRrZN+D7UBAPgjQP5iEq5c
	 n8wBQVj99RxjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDBCFC6165
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739623358.11820.18270872355290859400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca411c74b7b1a96fd4facbeda21dc7c413b9801b06ca7859bb8ccb71cc862d0d
Date: Fri, 02 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767396233
