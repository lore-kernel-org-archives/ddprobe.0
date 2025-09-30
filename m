Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BF5275AF6
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759229994; cv=none; b=ChqxpUZOYTFmGJR3woAqwIrHOmfXl/MVcTo7WByZMDPRjWvRkCgqg/w0Q9HdIu2qpgqaG+e8vOxRyOzVIgBJ0UQKW2lz0TdsHk2rdgyNPjl3+2vIQGhPbT+xA0MtILzmI1WDfnLOLHPwxIaOoszkfkMQPxF7l2JC7Os/L6ert+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759229994; c=relaxed/simple;
	bh=o845svRgWp7GQwQ6HMwnUEzhfdlwwAP0RPImgI9BcVI=;
	h=To:Subject:From:Message-Id:Date; b=NvguMtDE+je9ZvOoYtzzNKd8vpde89h8zU4YDDVB/luFRDa6mTIILXIa4Ew4EImd4gvQ2fgRBNwAhJ74I5W5zSSTkv5zEY8CDOkPJ0SDhGYZuSPx4dB5PPp8TX0NGXQGHAELUA4ZJWpc3aOozZyYldam446lZoTe/59PPykoie4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZ9AapcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZ9AapcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF531C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759229993;
	bh=o845svRgWp7GQwQ6HMwnUEzhfdlwwAP0RPImgI9BcVI=;
	h=To:Subject:From:Date:From;
	b=pZ9AapcX1L9Yk44O3vbZLlR1bDbZLlqGxCy4pNwNZ/2gKSx05h10acB3O5MUI7IcM
	 P+CTmaTDbAncyBDksGJGxU+atYtPpMDc4Tg0EhecOxIyxEilur6HoXzrXlBscudFi9
	 AE+g7rPXsbU6rVOrDsm3RPdJw5ZhVTL+s9AmyIJ/kH7xY0N51oQemfCdZJNDwZDATW
	 Uk0JOasQ2cCn9uEZeashfL7j7LBOff9hPAs8SRWH1mzQv6uA0bIHrqhJ4vBVazDLkJ
	 N/GediQ2QPlUSVysoyoUA2OKExR47JEUjsj/GZsQxIR/05FQX/AmmQfmnKDpdvXL4Y
	 sPt/DUOKnnKoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8EACCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922999363.1682.15008571665058477623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f12492a3f4831dd9ef1733efe7b8a5dab7164804ee6e2811c82aa2e789616b7
Date: Tue, 30 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759229993
