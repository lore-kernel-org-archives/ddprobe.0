Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18718EEC5
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729425354; cv=none; b=Wb5vba1OoxKZiPc5xg3HMMZFX5E110nFH/Br0OLoucwY2qr1hW1E6OL9iEYZ6AWkobTqKYdArN+mVpI0/3RI5dA52cc2wkDxEXVnb7+kgk8NuRVwkZskNceeHM6Kla3IVOSCojf3TIJd9xWzrmOS+GVS24GISosuqNfeKW4B2b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729425354; c=relaxed/simple;
	bh=Vbrl7/YDZHZGpL33lv/4DvZdy1WN0sG39P0vtbdG2Rg=;
	h=To:Subject:From:Message-Id:Date; b=Wgb6DlMNtd2E7qSBmmVuxG/35p8ZvOb9y3pNXXAMAs/U7m5a2+gVYQ1HFfEraChyK9g8GCP+r1u5ltfVIkR7FLUXSoDSAMu7oTNAENFSldjy/K/Qa1FJcFvKWGkpooKzOGsD/9yq5tca9+LVicS9awjFbfxW6Big90/5DI+odlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqDxwCD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqDxwCD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB22BC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729425353;
	bh=Vbrl7/YDZHZGpL33lv/4DvZdy1WN0sG39P0vtbdG2Rg=;
	h=To:Subject:From:Date:From;
	b=jqDxwCD/4KXb25a2Tj7MyfH/kLMRvaJ4mxKaZm7ibFssn0AFLYgvU23rDNV9epl1Z
	 cZPWZ00Ng6ozahUm/xy7EIWh9CGc6ggoKlb29wQHIqZRap13woN0M6OjFH8QfnItCF
	 0tVEwoCEPIRRzqDT8l5pNdYeRWeQEfg8co46s2knzsJg7581vIxFvmyV+QeT/44/JW
	 Rt/naFKh+L6lSmwcCFs2IkmTCcNK0uqRC/nEe516IkVjXfC4bIImssepYM54Yo3FZ9
	 ktfaX+dIgG8vQVbOM5Uf1r3LE1cJcA4uX+ceupvpsZTIFYMbG1UiM1aO3wUgvqY2Z+
	 sgQCYxt0aB3Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C3DD3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172942535360.23281.7928106871425886723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc45d3dd6ca6cece9f1f89c7ff36c47ec8b1b156b5661cb541a6ddd7bd64725d
Date: Sun, 20 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729425353
