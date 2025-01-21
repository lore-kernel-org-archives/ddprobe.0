Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449991D554
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737444354; cv=none; b=tgUcPt34IfaY0N+s+DZjv51Gjqbhbt5LxDlhdaYQUGsylu+xSvcUQ7qkSrEV6E/TJqVyxL4n4Fjtkf4aivp1pJLPa3prls+YKq+F4l9RLkU7RA0yCPuUlHzugV2G46p058rtMo+OZ15uUNXNmP0DHwW7JsDvIFMsSCvsAvMiOlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737444354; c=relaxed/simple;
	bh=wvjCaLvnMd6BdNwmPeunnT803Eaqbi1c+XT8voMmzwQ=;
	h=To:Subject:From:Message-Id:Date; b=iUo3/6Q6M/QGFhFFnKgfMQws50y7GtHeRJT4A/xcecuRxecTx1o49q2RgVcA2R9T4xZsHQ2Rw3eXjVwmRhrfGqlh/AT7uZ9e6f8B+/w3G/gQBlX239eIxH9wUnIA3b3YfrnsGXLpe1yzC67tW6imPGOGmF5vSkJYEEsx+lzzOgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pT+CmcoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pT+CmcoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D80C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737444353;
	bh=wvjCaLvnMd6BdNwmPeunnT803Eaqbi1c+XT8voMmzwQ=;
	h=To:Subject:From:Date:From;
	b=pT+CmcoS1VJCxe/4381gDG1AjZ7//D4BrDmjtAbApDLjTg+c/ws5PjM4Ld243e+tO
	 M8TxH7zypQRGTAVAEDBMstmQJ5xtIwu+uaENP4UtoodspgN8gdNf/4rsE6rfzZprVH
	 Y95wt8tBN7kJLugoMjuYj4eeKgCqEc56OMRn0jcZfr7DC3PtQZReDvwZEtwHrh4bcD
	 62wNito2mvG79HIaNIsmjlfsrJYiCVm2bbhjiHmVPPq8uVSaQGoby42kPgfFFEDqtB
	 HnOKXqinT6b08rG7QCjqTXqlQ2PH1EPp+OmYroKFHK71enYCRZEfRKsJSqQbx9RJaE
	 J8ru2jj2J6Jqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9274BC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173744435359.27654.6923642525340733893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f39d2861b411c71c1379a4ada612fa810d681b0b6414dc9335e09704bca4cd
Date: Tue, 21 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737444353
