Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1605718B46D
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728975954; cv=none; b=TkRxti2Q9d3rfzy5YMKa/cdMqqTfeg/RyfaEAQURQi/bjIHclAQpQj3B4D9eRrUPDHcj6+jRVZVVQWjw2DuX89KXAsVAAAwbj+rVc+Am8aJbwSdQYEXZeiODzwTOqaNE8rqbGA3erSXvngUqBpgnBGWVoig9nhItyyre1rQbn0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728975954; c=relaxed/simple;
	bh=GPfxnKbCi/33/J4VQaxArdeFzDd+DKg92lQc3ld/YlA=;
	h=To:Subject:From:Message-Id:Date; b=JrFk4yq4IvwOgOQESE7u/e4v82Rc0dTBhNeOZQUM2rtoE+D2RgILvvW0X9vzxHGI+3b62YVt89srZnNq4EST+tEeKZzXKhU2asv6j08+mMT4MeWxSPK6F5AeziatXSTakK4zUdifNk2J6wWGEu4jfUxJ4VSsDLxE4SOGfTnOxaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Si9v+Zj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Si9v+Zj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0F1C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728975953;
	bh=GPfxnKbCi/33/J4VQaxArdeFzDd+DKg92lQc3ld/YlA=;
	h=To:Subject:From:Date:From;
	b=Si9v+Zj/mdhShfImKs8BxbN0Iv0E33xfxtipBslfe5yERhMkxEt7T4ZSGc7/mIBrJ
	 6l9UNu/lUrutKg/6FQB0h4RhxZyPOy0zbXytQwUkY2G36Xg+gNVav7Z2IrBkvG2zx2
	 +WbBhZE3pT1RH68NF1F3WXhAGbOzPF/fVa5vRBwZazShhtr6NlyhMc6QziwAa0YLwq
	 I0C3xsXVK2Q8YQzMT7A17ap8CwUFP+1BXTkXsuJS7aN0C7BNOF2qUgHSMFK4qKS9x6
	 lSqNc0ZjJ6ZnW1Fn8SyLy8flZw3iP6LZaQCh5Liibu8R3bL+g2tGTrrlwC/GA6kXcI
	 JiAxztYG67Pow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904F4CFC271
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172897595357.30427.996518368351956653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22133c0cccdc8e1cb19b26681446f289985d706b210a9be0caac0ef21e67163
Date: Tue, 15 Oct 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728975953
