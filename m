Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC803C1996
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782225394; cv=none; b=ftZmu9D+QMg5he+G8ZIQ2VA6MC2flcLgWMyX3tzuYIJv116nIfMg17EFqy00oTQmWWBA5bb4j3Pl4Mtu88e6YL5uUeWopnGZJgxjR+IzpgyGDXsCU9Lzq1CucCTxS/NAn0741wWCzyPdLmjQZt0Th9u1PqJmXxHYsEwxLFFxADI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782225394; c=relaxed/simple;
	bh=5OICd9DQYZB/n96mst7uwmKSjlkc8la8xEoIURyrFV8=;
	h=To:Subject:From:Message-Id:Date; b=pQxh6ZgqPfe07WNARoOAlc95HQkZ2XrT63KVXz0drpcZH6sKeim6c1mJXAimBH6HaoW+IVuU8aUU4Y3la/ZIEpGOe4nlTAwmM01KGtdvJnv5GgRiE+J3PWSDek3Bldb8IY3fCrKlqnrFWn9DFTaZjXKq6eYQtvioWmoZrE03zO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uV4RckJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uV4RckJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C894AC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782225393;
	bh=5OICd9DQYZB/n96mst7uwmKSjlkc8la8xEoIURyrFV8=;
	h=To:Subject:From:Date:From;
	b=uV4RckJ4AqHiUqEX3e/d4bmfS/RE82l27h4Xa9YyrgDr4q11YbQtHEilRhRZendhw
	 OWaOANsPDF1AdGxOP7QnLFJOCphRYtauNMjZf+VLzgtMJqDeoJMCv+OYQMhzigECGX
	 JlN2QhBtZQfJR4UX1o9gwiU023nWJk/nwp2Soj2RwJTibxrhl/8BjV2wSeFsrKu9Lu
	 CyyNkaTGobS8tZ11yRB5dJVz4bx3sAU0HlWAdEJiqcIn7mtTFwdlZtzF/F/4XXqGF1
	 HfA0Nf7Wu8Aj4NjF98rFm2uunzt3giEvG412e2DX5UbYWNvJB7ieqgVxS9JyrvEvDb
	 6hDocc+O7DCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9A2CDB479
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222539369.5704.13444917637768322067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52743ad86a3f8bd3cb66c1dc209216267a6496723b18663ef5fb36f6a17dc88a
Date: Tue, 23 Jun 2026 14:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782225393
