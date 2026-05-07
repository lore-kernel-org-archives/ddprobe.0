Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8A01FE44A
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778119054; cv=none; b=oy4atG18F/2JRDta9atwz4TVa6cduiZV3Vi9TKEt+P+7jjXSvozA/6NYNK3KsEHFS0RKHES0oyx3uJyOFiqk4x/qlfJe8zOcZ37kvcJ9Aey9AZyjDHCuXqrga/0zHZdK2Q3MZWSpPoa9iRRN8kZQMvcrnGMt/5kYPkPkslGO08U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778119054; c=relaxed/simple;
	bh=LI8mR8l/tGg6eTU+DKk2YpSN17+bXj2tOX/FgsWZ+ak=;
	h=To:Subject:From:Message-Id:Date; b=UNsIbgAq7gbtnZmG59Ve8QKnrLpKQ6XmQE2NDjvnVzZuSiQP2kIUxOpMe7HWN7czu7slKbnmEiZnnxmlu4xtnNh45l5vf2iKWtWInlzMHFXCGzBwUk3ShGjtN5K6hHsQa6z+8/gkTUc3hjodK5SNa0jQ83lYtUzkv/2ACyaxUYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1Cif01q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1Cif01q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAC0C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778119053;
	bh=LI8mR8l/tGg6eTU+DKk2YpSN17+bXj2tOX/FgsWZ+ak=;
	h=To:Subject:From:Date:From;
	b=I1Cif01q06CQMB2M/wcVUx8KBy8Zj5WRK4nkNgAUL9XGKiwCh5UbRO/x66U/NeF0L
	 JYljEhgxJ0yOLUnQXnzhMSPlmrEPR+AFkEPB4TjzRGxxmJTYaeabh0NfGdNygA1UCq
	 B9cTWpeWXhSIcBssQgZc3tTBTEmvLj2vTcJ8OnjtOvghjJkQuLYH/QQfQlhUHPqaxg
	 UZTArDsjIpvSlAieRnkcqRr9D9SBqIy2tzAfAoF6uwMsmH1Ej0PfWDwREwB20HWMiO
	 UZDR90LndlFMoQ7VStMz3HIeRjEdpJylG62BMDVw3hb13jjdKI9oReWJlzfpGaO6t9
	 kqk6KX7DmbIzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB816CD3436
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811905369.23630.14940892804498347257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12765c0c1e1a498375a11832ff111b5f08f4fac51d5925cc8b9dff652338c713
Date: Thu, 07 May 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778119053
