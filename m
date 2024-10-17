Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1776D154454
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729154754; cv=none; b=AfCdaGQZkT2/FvUdWfRmYYvcalaTrzM+NCwPv3x+6e1XLAFs7pNxdoW2Fd2fSwFbkGAc6wTfewMmeNrzMZ43ARfrim2/iBZGIDlkjUN+xa/zkwk8+dtsK+ZRa4vgDywTBhC9BGrkeu5L3OwkRcb+Ktt9LOU61K+x32XsTSP0S3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729154754; c=relaxed/simple;
	bh=oDkjzPCeSTv685AFZtgO56MMnD8Eh71UjhTvKv1nPOo=;
	h=To:Subject:From:Message-Id:Date; b=HlhpNwkTs9PAO8ow55YfIPMrMxQhLt3VyPiWjS8trf2RXsHMi5TRiUSYDLFtH2t5piD7KzpqnyZ3qqwVQYX145SKoCxLhhiUVXreix+XCUMZeU/+HI8XTrq5oB4NEt7jCFm2JkA7jT+C47zL51zXCykXqlHhoSrLKvnXZC4yDsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAxzBFsQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAxzBFsQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5C1C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729154753;
	bh=oDkjzPCeSTv685AFZtgO56MMnD8Eh71UjhTvKv1nPOo=;
	h=To:Subject:From:Date:From;
	b=YAxzBFsQFRfMt7jr786Zp/YU+hy8qO154zq8SHUGr7uULXDbYJQ8IJLJXeoPmM98D
	 97rqb18iT8vjUOZRlAnkp+BQettLOaJ4WtFWJl0QZw3092SHLMIIreoYd6rId6MxBo
	 Y6uNV2TAhLIntV14OBn8G7CcTHlPkkFGh0UQ6ro4FVZc29nI90qzkSl3826I0Me3H9
	 2qpNEkBW3k3PGTM3qqyGlmRjw4GNb+iHR1riOD+cuQkGxWU6OJTg4AkY1CaRezaPKd
	 LhIS1xvKAcsvgwnM6maR2C7gdlvmFhVcsiXTsP3LZUXkNvEcAy8GjOl46Gmu3HHLph
	 PzVBOU4IYtLSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA6D2124E
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172915475358.23787.3955309840340034255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd49d705dd754a8e906acb20fb4a894d5f606a90a67418f9407891419d14ddb
Date: Thu, 17 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729154753
