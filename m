Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED98342CBD
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772261094; cv=none; b=GQURjbkZt11vhNaWOduUkdE4FihocEbLjBtRL1g1CdWgui0AgjYWgxzFAAjgMKUurCzijHl6yKVvvzQtDgQbTJtZv+5XNllIEeivjRilvW8S3WUHJO+qwM43AZGCbk5Hlm6BV2OqX6vr/43ZvNIG7yg3msv+rZeyXzZ86mtwhRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772261094; c=relaxed/simple;
	bh=R3Deg1rEYPZG7yXXHYZ0gaLLQSd8USyJoImHqcx9QPY=;
	h=To:Subject:From:Message-Id:Date; b=b/LyrVjyGk5WEuSGGMzfRnFoTCvrxmVZi89jdTxB65KP7WOVa6THq+U2XqFxRUX4bDBtQWN49e9Xs5DX9fe2qJWrL9OnFpNAxW0jMnc5fq4tKHOldcPhtJO64cuMt7KAjTnQoMy3Fk67Do+fM8QU/qHCZ1iOJspnszjZIMGBY8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgPBlT9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgPBlT9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC987C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772261093;
	bh=R3Deg1rEYPZG7yXXHYZ0gaLLQSd8USyJoImHqcx9QPY=;
	h=To:Subject:From:Date:From;
	b=fgPBlT9kGdRrl+bcDVCgDYJqmjicDSDt++qL8SWE5lO3JZfP200ydF+rOeg8rOA/J
	 3jAIfs69bQuAXnyNuQtHzQXw6FdIWweIV3kYlKjzvQRX2D9iKXwqBp50sA8aJJG7q+
	 h88nLy01UYnLh0OLSEADLWfa2C4rnrCN+ezvxodzWhn1WONv0IO7V7A6U4toY+F/xX
	 LM41QSwRlEWOKRxoJjjN1u+dWpX+F31Y2sz4CDxRcTgoeD5o4rzelixnC6cVPkP2F+
	 S0VfVcL43W6vlHIJ0GXyUpKoyMNQhgtLyO71R0IwLwv2aWzceHdyULIh83hmJ0DcPw
	 8PKvv5PBiFLsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94445FEE4CA
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226109359.25863.2076546652063486187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248ae7c32b863cc6f675579ae8f494e1c0c08470bd8c1e22f7ae35e5535e2488
Date: Sat, 28 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772261093
