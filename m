Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648058F6F
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742443794; cv=none; b=bK0GjkU7yvo2EmGoJsh1Yqj9dU5xjzjsPMNLKjM1boXemnJyKlFrJblfWGI6H1n0IMz0vYEUS0s/Bt53ctHM6Xyoj/xlYTTNpiln/fXw+RSd296DqJfXnc+GHviCVFwbN++cgkOOGlE0eXzj45MeGA/6F48wsbFATSGxoNaCYsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742443794; c=relaxed/simple;
	bh=SoUGDiLcM4RK0J2Jku+G8BOXmnxaYqnT0EQ5rF/N4EI=;
	h=To:Subject:From:Message-Id:Date; b=CGMLUTRgws2QljMZZwTCLvb9PwsyiojNaJNcwVX9JGOp5l/qAPZCcnoHm1q7xCChYn7EKUuiePwrrXqJUNK0PGCr9mMFRHeRw50Sv5c0xxle3LDWZlkjdd5Zihd6RdSKP+Xqryt6TS+f53Z1bYgV9YlzXW+Bv8G7PDl3bPcJRtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBjExftU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBjExftU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC436C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742443793;
	bh=SoUGDiLcM4RK0J2Jku+G8BOXmnxaYqnT0EQ5rF/N4EI=;
	h=To:Subject:From:Date:From;
	b=FBjExftU7WhbRQSl5BLvSqUkjntrYzCS9tkk/YPennWjzMrm7QHNt6oXyZVk/jTkK
	 REhzNZa/ZjeiZzcdCEOr3TAw7RDPVKgoXBaewXBtoMioplkK1sMyqYnGnRo65kqTyO
	 gy03dz3kL+UB+/F6ijAXMXUshDgwppthJyksS3ChFdMsYq8QRBYcD901iXyXXf0N2D
	 GcP0KxIT/LA6GD4fs0nF7cqSTMwzk5tjvlavL0vMY7ZUWWrVttFCjEdZQGo6E9G2YG
	 wkXpoiYaDRj4CkUQxmRKp1Pyqj1JEvrlvJGWbuL0V2PPFycgJyZ5E4lgE0YFw7Glt+
	 Kiq6oE0hyDDLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F591C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174244379361.29122.14384037198173945410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e426a2ab881378cb1e5bf438bb3e0e1efa0ed563d801bc47ee9b9eb50669e7d
Date: Thu, 20 Mar 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742443793
