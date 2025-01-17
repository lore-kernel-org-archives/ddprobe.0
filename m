Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3637113B284
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737128754; cv=none; b=UZI19sef0qzibXXd7n7AEYVf8lssH7jlIT9VacGi3zRJA14sWApJItMMDqwJLWNwy2rbfsUMyMu2iTjDHJcsZHMjocpPQNm7O+LRhQOqfEmNUIJDOXUjr1/SC4pPRBxlsfvCqkuwXovnrg7gaFlhLD2+yTUp/qmipTBzXjBiqf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737128754; c=relaxed/simple;
	bh=Wp5ZupMcJMR+Oa3gkjLkYTJX+QgHVzJYBUVtsHyGk1A=;
	h=To:Subject:From:Message-Id:Date; b=cq6nxtM3VA7N6K4bmetK/0kiXZTv1xlm9WJwfC0IrV/GIsNk7wC2AYOaOlwfCinhXrhgABRVEIi2AOXoQGPkz1yFVREcQsbL6G4zQqSZNIfupZe5UmkFdKfouVhjUcyyhyERZy7afLcfxNNgil5SeJwxNiO+1S2DhxtIrq5Fwf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuWC6SfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuWC6SfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D9AC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737128753;
	bh=Wp5ZupMcJMR+Oa3gkjLkYTJX+QgHVzJYBUVtsHyGk1A=;
	h=To:Subject:From:Date:From;
	b=nuWC6SfVdbGksBEfEPXoGA+U9IkGEKGa04mNdFIECg2F0RSmKtBxkQdwMOCXJc4eK
	 /aulpilv8P0pCaTT3z5J9K0RMUDd0DVKzx5D3UEc+b4vhOfM6tMLRBqFyQZW1sCS4h
	 Gqsp0XJDQsIfuN7Noz9KS7SDXhHX9X3aI4WT3Z1j5N3V0zyNVGJ6W4O4watmZMapZi
	 +w/0tjPu5ABa3r3nJJjs2jTPsT6gHHYnfXOaBejjaeIa2s0zP5WTZCzm/yfUsjfrVn
	 1sbk98xa6QFtflvMYORmiFqjOFb3C9bj0YLluqBXmNfRi+J5RntiJAVFLw1crGHzhc
	 sYzrPFu0yfMKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADF3C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712875362.31786.3111291239541052054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b022130fe80864be79b8e8c99a1cd1e0629ac5f93db41cd8eaf190cfb062f8a6
Date: Fri, 17 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737128753
