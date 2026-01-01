Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1551DCA5A
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767308634; cv=none; b=roXNZB/P1Ce1n9uVUiS1da4MBvK/3rAZjX9m5F/7xtwtgqddTvSnZZX4OumSudZPfWDkCwr6Wef9Qe9/dJ40uXES78V0Q0fOYfeaYJ5vDYG232T4dMnki5R0UL/HsCQwvnHewmdM3oC7fAf86gSbZdtBccMjq0cJO/ZE7edatIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767308634; c=relaxed/simple;
	bh=JE5FeGm/6PH9fwxszYReKavK2KKLc13aXtveYKYry+E=;
	h=To:Subject:From:Message-Id:Date; b=K2alMFfYTwSsoMnMlYs70llDlV3hJUhoXvvXSkQvK3S8+OBMhykFJKMvFPyi/+dgv9dYcOt6grsf1iLI8Nw5udZ+cqy6lJl2ixCp3N55bMN3UtGyNu34aLCqiQkrfHVR47LCLD/BAt2YfwTmFvcY393qJKPHXwjC3juwIr33w4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ta2jJEvi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ta2jJEvi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFE2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767308633;
	bh=JE5FeGm/6PH9fwxszYReKavK2KKLc13aXtveYKYry+E=;
	h=To:Subject:From:Date:From;
	b=ta2jJEviZnEHJW2ZYtdvomMeW/88MFdD6FROSvl89FoyCjmWSuuofX/tu0QJc+oB+
	 IwIfp6vO0dK6U1RyfRBf5YwKJu9NHObjhSnatNw4uuqCkCd5PTa/sktYcw+JV8stpZ
	 dn+JK/R5aHvnOsSK8e2/so9rQAaP6HZu6zsKEjIbKGfYRxXK4ntzI0L5yCAoUXa2BW
	 3Ve1NtMDyQ58nc9/1Pu9uazlATFukzfWn1wsXbtme6oVAOk3BxkDKybIugR9h9OLMT
	 n2ajXOjSKjQcgJy1nA1JHMQpVt3m5PWrqX8TED1F3w78ZxnPny8pGZ5N94n65qggZ9
	 df1X0LXfFj6sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E938EEEC1C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730863357.17048.8545762828226727998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c95d22cc661fcff0e69e742d27ea6f8af46ef64b3c68e28eedbc2f3258e72d
Date: Thu, 01 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767308633
