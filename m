Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267191B4F1F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783837714; cv=none; b=eXH+U/hzLl8tGrwSOFmnI1hSLm+oQz3SBKOUZQSlwOvQsFQbbHqubyVz/aDtRLBteQC7gkop8n81k4HbiLI5gV76BDnaqb3yuOSfg1zcV/c21kJJLalHaM1+cTIQgVcHjeLnyTTo3cguFFErXkYB23wZXhn9/Z6RUZPVaGmksZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783837714; c=relaxed/simple;
	bh=HFdfhDPDSzx1urOmQhtD4FI90TO9pKIAh98gGrUhUic=;
	h=To:Subject:From:Message-Id:Date; b=G/4sx4XPN9siRRHw4oGuF8GH7PPNjBTbEZJOwfuA5rSMuIb9KaUrKlfFuSQA9+mgAVmNPdOjhXpD7KFQM3nlBlk8CfQNh7yMf0/bG3RTbU7nLDwwxQByYshHq8Rs00Em0kzUaiIWADGBXuikEGnhPYEq+sAVKHlWjlSbKYP4cQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBD02WzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBD02WzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8FFC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783837713;
	bh=HFdfhDPDSzx1urOmQhtD4FI90TO9pKIAh98gGrUhUic=;
	h=To:Subject:From:Date:From;
	b=EBD02WzBNForrLLGkDNS7UcJgW1X+pdwSkgYnVba22uBM/99RZgxw8brGL2ppvnDq
	 +yGLdnU8NnA5qM3oM18rYhV/onx+Wi4fKF5PwMZR3SgzVUE2TgW4qNVlaQKCWnnuwg
	 kbUaA+9ptpAOGJwV5RD/hhLJ45/lG+LDcQMK+6SQZIddop9PWbCtovjBZ0ZRMM/AJ8
	 Bc8geWe8ZZPAtNg/WByj0CY8hwxV07xQaY5b0M7IOaUzeey2Zi+CD1yFi5nJ3VN/V2
	 ozxxkzRg5iwhpjlf1XEe4QtbGUT7OZXTpZYEP6cYxFuApiAozhXe0kZ7O9eGrXq49l
	 6ys+NrX6rqFYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EC4C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383771368.29716.15609917268322062668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621e3b88195c91a40533d47ed49b5245560f3fdd447b54aa8e14f0f8ff1baf41
Date: Sun, 12 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783837713
