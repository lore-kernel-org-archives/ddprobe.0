Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB6DD29E
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727273754; cv=none; b=hbyW7EHqqmOfGtIRANSA4cc6CVrxbwoewTPwW3AI5XLCTDGsVtKYm0exm5gxZQAnPRfGwvby9P06hX4mU4Uj5XWgivOy+7qDoNoyqcdFu5uH4WrPvSJ5MCXXahH8HDSPsIGeBsLp0+hR+UmNYduVpQzapqEHP7OMInB1eACQpYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727273754; c=relaxed/simple;
	bh=49j70exlp13NhB8xiZOd9NkYZPpJdPMJIj2Gp0KOmbQ=;
	h=To:Subject:From:Message-Id:Date; b=YF5RbLNJuxwbMGvSb3WwTXu6GQqVJPH9d/9iFSjcjz+OaNFE4LM4U2is0Dug17qTBNJocN5U2Fwtky24Kz4UGLHe2UICl+N1+X9jVoiJrugcHpgf1OKj9Vj1Ze1R0oTeZ1JRvs57dQrQtP/gKk2kxnkDHn/Sy0tG3AxEf0HDZKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ypd/V6oK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ypd/V6oK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51B3C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727273753;
	bh=49j70exlp13NhB8xiZOd9NkYZPpJdPMJIj2Gp0KOmbQ=;
	h=To:Subject:From:Date:From;
	b=Ypd/V6oKtE2Wa5jg5HkJeIu4HsYdulhR9adqL6TvWA99bHGsQ6Hx6JK4x/X/N6Cfs
	 DVD5CFEOC/dxAMIjC6LmsLRJf7FBgllCjOv7UiXdF9bsD2uAfuGb8H+qAXHeqPcvXK
	 7OroLdjSQVi01vfnIS9jz8ART6SFEJGzqD/QDyxfUuGC0ASbThjueGVZVbRVlmIObv
	 +qt1sMGt1xneITh0CbOo6w2jFJPeyseRV04RIt2fvjY9Q3ErrfDf1rd1OfGQF81/ZM
	 29L0sR7rUVYpd4hT2AZ5msVP1BQ/D9e/JCBN30uRClqgDvm7Nl2VfvBGo6iM4/09VZ
	 3yCWvsC4C4kbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0A8CF9C6F
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172727375362.6009.14519632062984698613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08ea5fd8491357aadf86eac241b6c533a3911528fa4b93ddd8f94f788662e87
Date: Wed, 25 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727273753
