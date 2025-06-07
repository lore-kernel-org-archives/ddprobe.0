Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0041C5D7D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749325794; cv=none; b=ETn1B+DK0xH7jL070moT32v/dk/RiFDU4iJamEcTKzqIwD8rjocNo09mB0eB2eV0lFehFBbP0Vw1oG4fVzvdaTtA8tjR1o0iI0H2IMYWatrZfosr+JsOPPNXSFaqVHb+jwFZXgoLGXyC6A6r3y9HDP4xJbzs9c66td9UNv8qZN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749325794; c=relaxed/simple;
	bh=TKQVambSLas4xX1Fx+2zuzm2Wn4vkT2IMFzRnRtWk+I=;
	h=To:Subject:From:Message-Id:Date; b=CiSyBba3jih1nsGoZbhsKxpoSQZ1XjZLJXB1abMlA1Ww46099Bc2KveUOKVrxhMkmL6GNeF/SbtCY4GXXE2N49uRJWfOV2gkvEiXREa4XI0xvqIqcoXVw7AIdWCopRoJQauPX7I+K31je1FFDCiTf8Nxe43sJSAifhOlpM5rZUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujy4y08Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujy4y08Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A287DC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749325793;
	bh=TKQVambSLas4xX1Fx+2zuzm2Wn4vkT2IMFzRnRtWk+I=;
	h=To:Subject:From:Date:From;
	b=ujy4y08ZEv1C4axcbTon3IJJPzNUDo2vDX+HI2fljnHsL8AOWY61ydozdBfKN+Ize
	 XdX5/m8DVrpkWGVFYcTDDy0EQMx1+mraUDDHM+zt/C3HjRFcG1DofrA8i8at5Hptg9
	 tKQb7xyxlnBA205B2jTfZ+bF8rEcNYbVgjsfObq0QrsH1ukhc4INMhmfY8evhtVnER
	 +V5DCoGlXCvWsXgtTqqmUBd2UDEH74RFYo1kTFlbVXjwL6df32iuLcPEcQAvYQsazt
	 EWTLRmu/pv7kN9erYW4Ry4LNRaAlSXJjTuLxuL6t/0GeCcSJDDVANhEExnTlGUXKzK
	 e7x7D0LGow8iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E4C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932579357.30639.2703310398979014127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aea05a7081202d3f739386a71076afb9c32834c69a261811babde6e904404e2
Date: Sat, 07 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749325793
