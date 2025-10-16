Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E513164C1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760614194; cv=none; b=nirCfYLary0yz30oPN7WX7W/0ghH3nYOzrRHcSR1O7c1uj7/+53fWGjo2TVhc6S4hrAknRN5SeKIXq5N8C3iduGehaTIy3ru/L8L3qyS4Vq8+AC3qecO6pruG8JrLpj2gMAz80+NiaRNWZArLVXzcR7N+1wv0aymmpEmfRvbklY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760614194; c=relaxed/simple;
	bh=yqXPl2Z3yzzOcRK+FljpXTdXT1Qn9fYO38RRnVHy7ZU=;
	h=To:Subject:From:Message-Id:Date; b=HIZL5Ly2D2fT4Zy/BhwTazQ/7hbYAL9AQ5BTivSwHO0CKFqB3rFvSOOhPNh/ylI82f5pryBpgmbe38Cq1mhA1B1srLtsuzAZuXWJWtKtnLN9jTPcHRzwoJSMDPbRLAu4e/xksaKvxCfjCqDqAfuHWUuS9yVTBiBW+5alPIfZWic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyrT0rWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyrT0rWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E44C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760614193;
	bh=yqXPl2Z3yzzOcRK+FljpXTdXT1Qn9fYO38RRnVHy7ZU=;
	h=To:Subject:From:Date:From;
	b=nyrT0rWK9DvDnG6YeF+gL4dJE1C7IOX+lUiYEcK9JnHFzLhd7Zu47B6oKQBR4sY6y
	 j7m5es8nK811+0Be2CXr1951exIDj4xP+Th49IytWrCdi2qHwm6V+25FbFJqC05WGK
	 /Mku1xJEGZkSOGrMr0mvXAkUguBrBTmOaluy3K7FSCnN1qh7aQuCRwqJ6CAKgO9Evb
	 x1lbTQGCkL8oDWbfCjyu65O5MNlA0nnkNpdlSgUImYIc74LDYMn/ut8DvXIQStY1kr
	 +jt/A0EOQa9Xe1TlfbxX7/Tjv9YpvzxHCIEn1mvwX8QvTarlEriGqWLxyTmqxiVSd3
	 eXzGpLsoxMteQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944FDCCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061419359.21414.14280493316847429130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8622f9b28b0238fc39d6eaecf6619d75de93003334c04c2029dfbe323bce8c9
Date: Thu, 16 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760614193
