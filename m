Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437124ADDA7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788619834; cv=none; b=MzsvGeC5wBFlGY2wXEroXfafI1wiV0UHlxLzG6LKiUhD9D9Ts4CqXfUYY1/O5XtTAHJRT1pZa212knrWcgn5pjCjvJZRI6BXu0vfkn+eh7Vyv9xJkO7n3fxzW0bQwSrVssO7UjXZcTWmFXhTJW2nMQM6DgaOh9OxKDYaUMAH3T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788619834; c=relaxed/simple;
	bh=fZxn0bmrLnFix3+lqMYlI5KHIy3FFQ0WViLU2AUittQ=;
	h=To:Subject:From:Message-Id:Date; b=dQwaJ/5i05V+CYYP6dI4S69npPeJ5faLK7TtP55Nh61Nuat+MzktNpPs+9bFWT1/BLAQvxVbO02wiG/UTegFGHPpkA6m8gnms5mc8h+EC5rFewhGxdt7wD8/f7QUdqJoj2ADKzEVCoixn6HYCghVE7o8Gs8heJCv+E9Kp+BLUt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNKmWTyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNKmWTyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1435C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788619833;
	bh=fZxn0bmrLnFix3+lqMYlI5KHIy3FFQ0WViLU2AUittQ=;
	h=To:Subject:From:Date:From;
	b=sNKmWTyBZyjcpZUzCY5PvoTpXldkIgBwrQjyigpE2gXFxKmhIy7I9uPKK35SUIvQI
	 /BkXyexiEGutQ82djtDKtq9n1nln3IEW9r9oPlPTRlVCMz3VJPY4wbyCIKQl0AhY0w
	 fI98pL2pkq57ieq08HXYvmynxykTlpA6KPVRf4mlyf3oSuf+fcY419eNqo+oJssjgQ
	 l6Jm5AQEnsbqDxMpmqHsEuXH8BVjkgLeOrc43deyp0nXyhMXXHy0zdMaYZ98/8gqhe
	 hE9aQ2ramV22YzjvLEnyr/SPZE2WdiACEaThvMI21jbcvOhB9vhBV5LUT0IT7SuIvY
	 I66Apiv4AcO6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07A0C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861983368.14326.12868130267434510335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b20dc8d57058b77f8baf7745235bf402ac582a59aa45589cad584a6c4e17db
Date: Sat, 05 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788619833
