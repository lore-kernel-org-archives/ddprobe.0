Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1602023A566
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777561654; cv=none; b=sjzCp+jArq6McqjdNrJWkg1AxhOG5vmyl0n7n0spoT8CbKYP3F2gjqRhTlH2xVJURuJVFFUf54L2HHi0fQAgrU8XWTOhnnatUjS0HCIbwVtuTkkV7/Pley3O68X3MuMYuoYdVPc0QpodsbEiL7psT6oOOhRrZbsYjDHNcO8ke6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777561654; c=relaxed/simple;
	bh=iuBcbIveEApeZhNsX6Pd9XDAES0fozck2C+OAlA29HE=;
	h=To:Subject:From:Message-Id:Date; b=r0oQZrzj3RBg3OBlu8C53dmSRVBPQkXmxahfZ/vTJvkq04bqlg+jBPRZcXETvNZT2J6Jvz78lf9l+WcVOD+o21HI1j0afV8f8Sm1TJuuYHTFmW+dGrp2U/mRbJW4QqtFzitQbQ3A+BcD1B8r+T3sdakGa0gc/ADy6ojUesFoxhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgixGCM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgixGCM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B889CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777561653;
	bh=iuBcbIveEApeZhNsX6Pd9XDAES0fozck2C+OAlA29HE=;
	h=To:Subject:From:Date:From;
	b=BgixGCM1p1sGWfrtx3G8leU9GDAxp/yjUC6C+CCp6sKKjIXqgvto61cKBpEEtfd2t
	 qYb43Mc0bBY4h78B5hM4LtsZ/e2/w4tEAfinB6WuqkZsa06Y6/RikiiKoGCvcTHyFT
	 33T/sM4wz+n30b/ovzjBX62A3Tkafj7xsuoIfCnh/xXX08cxsi3PjYSk4A148ZImEa
	 MGxBVF5DuiEeuE5aNtX2FKdRepG0XBC9YUbSDIPoP2hOVgDJF5eV0H1kbXAZ9KePH3
	 rFPKc0OcEw5Cezb28dZp6mi7WfndqGHOSr+PbdoZ8EaFO++SiO85r8l5RNBlHQg+i8
	 YjvLk+6iz62Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA798CD13DA
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756165368.15316.6687677275651586986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e91567a6f98d58e7530bde739c3a1d4808fe32edfe9391b1fe377736d91d92
Date: Thu, 30 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777561653
