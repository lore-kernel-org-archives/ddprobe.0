Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D246A22083
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735817153; cv=none; b=l7C/U89SMEu5XT8Akwky3Uco89onm1B9ft5Lf2QHRH9Bof9nIWONOWLSZD7PTdIBNxGEMYW2r13yF7nDJ+zZdCy9A5n2IcT9qTB2K+LGLlImFADmWolCfmfeVoGo/vYViS2NyZBIULc3NlWZ1rCRb0X7tclNQOVOizpuVVwnYfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735817153; c=relaxed/simple;
	bh=DIrza00E/lFyBAHq+jjO5NadmMMb/XWFC9JXOb3N3rc=;
	h=To:Subject:From:Message-Id:Date; b=X6tcwXDPy7/1B2y/RFk17AxGUcNxlX1NCsvN31UoKspkl+V/lreEW6ZNYd7MSfgH4O7l1hNAlyD1k0rf0pCB77nfbTH/d3tyGP19ceV7ym4uALOqiJVTeyLyKYwuspSxVc63n1u6s8QnXgBxyWU/mOx69T7NkC/pfffYhbjAHo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uC6/gF+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uC6/gF+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D03C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735817153;
	bh=DIrza00E/lFyBAHq+jjO5NadmMMb/XWFC9JXOb3N3rc=;
	h=To:Subject:From:Date:From;
	b=uC6/gF+R393tjbPGsZ5su1mpT5QP5l2grhFYvFPRB+dzep2Q4HOY8FLSxues5wwuC
	 rBRBHPzpVAzB8MIWlaqXdNY6i2oIOcGuCQqvCj3mgwTmEx/0XVxC9FbOfbAEvGZ9Zo
	 T+nR+ehhge7PNzD19cOP2Sy89HXISmMCO+uEMjcDoPoklTQngxddBriV+OlgLWlzaZ
	 eWEjKo5Coj+TfKaH5+XDgljTCWkkyl2RFDQjetbBQx+bXThEx8VLt0V1BqsifUSvqt
	 QC7t/M0mcB8EznGW0ZEa/A7XsB16IhD99xUkRLnxJZmAWcNLejCEoDAnIYyb9eU8pr
	 rPWOr11Efz09w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921A0E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581715358.15150.17917966221882065781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7814727dd4d99f7987b9b7eda152bddd2a3dfa748bb1b7f3523471c4e74a5cd
Date: Thu, 02 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735817153
